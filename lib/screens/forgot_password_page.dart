import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kliniku_server_client/kliniku_server_client.dart';
import '../providers/auth_provider.dart';

/// Multi-step forgot password page for password reset.
/// Step 1: Email input
/// Step 2: Verification code input
/// Step 3: New password creation
class ForgotPasswordPage extends ConsumerStatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  ConsumerState<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends ConsumerState<ForgotPasswordPage> {
  int _currentStep = 1;
  final _emailController = TextEditingController();
  final _codeController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  UuidValue? _passwordResetRequestId;
  String? _resetToken;

  static const Color _primaryColor = Color(0xFF2E7D9B);

  @override
  void dispose() {
    _emailController.dispose();
    _codeController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _handleStep1() async {
    if (_emailController.text.isEmpty) {
      _showError('Masukkan email');
      return;
    }

    final authNotifier = ref.read(authStateProvider.notifier);
    final requestId = await authNotifier.startPasswordReset(
      email: _emailController.text.trim(),
    );

    if (requestId != null) {
      setState(() {
        _passwordResetRequestId = requestId;
        _currentStep = 2;
      });
      _showMessage('Kode verifikasi telah dikirim ke email Anda');
    }
  }

  Future<void> _handleStep2() async {
    if (_codeController.text.isEmpty) {
      _showError('Masukkan kode verifikasi');
      return;
    }

    if (_passwordResetRequestId == null) {
      _showError('Terjadi kesalahan. Silakan mulai ulang.');
      return;
    }

    final authNotifier = ref.read(authStateProvider.notifier);
    final token = await authNotifier.verifyPasswordResetCode(
      passwordResetRequestId: _passwordResetRequestId!,
      verificationCode: _codeController.text.trim(),
    );

    if (token != null) {
      setState(() {
        _resetToken = token;
        _currentStep = 3;
      });
    }
  }

  Future<void> _handleStep3() async {
    if (_passwordController.text.isEmpty) {
      _showError('Masukkan kata sandi baru');
      return;
    }

    if (_passwordController.text != _confirmPasswordController.text) {
      _showError('Kata sandi tidak cocok');
      return;
    }

    if (_passwordController.text.length < 8) {
      _showError('Kata sandi minimal 8 karakter');
      return;
    }

    if (_resetToken == null) {
      _showError('Terjadi kesalahan. Silakan mulai ulang.');
      return;
    }

    final authNotifier = ref.read(authStateProvider.notifier);
    final success = await authNotifier.finishPasswordReset(
      finishPasswordResetToken: _resetToken!,
      newPassword: _passwordController.text,
    );

    if (success && mounted) {
      _showMessage('Kata sandi berhasil diubah!');
      Navigator.of(context).pop();
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red[700]),
    );
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.green[700]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final authState = ref.watch(authStateProvider);

    // Show error if any
    ref.listen<AuthState>(authStateProvider, (previous, next) {
      if (next.errorMessage != null &&
          previous?.errorMessage != next.errorMessage) {
        _showError(next.errorMessage!);
      }
    });

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Lupa Password'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Step Indicator
                  _buildStepIndicator(),
                  const SizedBox(height: 32),

                  // Form Content
                  if (_currentStep == 1) _buildStep1(isDark),
                  if (_currentStep == 2) _buildStep2(isDark),
                  if (_currentStep == 3) _buildStep3(isDark),

                  const SizedBox(height: 24),

                  // Action Button
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: authState.isLoading
                          ? null
                          : () {
                              if (_currentStep == 1) _handleStep1();
                              if (_currentStep == 2) _handleStep2();
                              if (_currentStep == 3) _handleStep3();
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _primaryColor,
                        foregroundColor: Colors.white,
                        elevation: 4,
                        shadowColor: _primaryColor.withValues(alpha: 0.4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: authState.isLoading
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : Text(
                              _currentStep == 3 ? 'SIMPAN' : 'LANJUT',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 0.5,
                              ),
                            ),
                    ),
                  ),

                  // Back to Login
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ingat password?',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text(
                          'MASUK',
                          style: TextStyle(
                            color: _primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStepIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildStepCircle(1, 'Email'),
        _buildStepLine(1),
        _buildStepCircle(2, 'Verifikasi'),
        _buildStepLine(2),
        _buildStepCircle(3, 'Password'),
      ],
    );
  }

  Widget _buildStepCircle(int step, String label) {
    final isActive = _currentStep >= step;
    return Column(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? _primaryColor : Colors.grey[300],
          ),
          child: Center(
            child: Text(
              '$step',
              style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isActive ? _primaryColor : Colors.grey[600],
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildStepLine(int afterStep) {
    final isActive = _currentStep > afterStep;
    return Container(
      width: 40,
      height: 2,
      margin: const EdgeInsets.only(bottom: 20),
      color: isActive ? _primaryColor : Colors.grey[300],
    );
  }

  Widget _buildStep1(bool isDark) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reset Password',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Theme.of(context).textTheme.titleLarge?.color,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Masukkan email yang terdaftar untuk menerima kode verifikasi',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 24),
        _buildInput(
          controller: _emailController,
          hint: 'Contoh: user@email.com',
          icon: Icons.mail_outline,
          keyboardType: TextInputType.emailAddress,
          isDark: isDark,
        ),
      ],
    );
  }

  Widget _buildStep2(bool isDark) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Verifikasi Email',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Theme.of(context).textTheme.titleLarge?.color,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Masukkan kode yang dikirim ke ${_emailController.text}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 24),
        _buildInput(
          controller: _codeController,
          hint: 'Masukkan kode verifikasi',
          icon: Icons.lock_outline,
          keyboardType: TextInputType.number,
          isDark: isDark,
        ),
      ],
    );
  }

  Widget _buildStep3(bool isDark) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Buat Password Baru',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Theme.of(context).textTheme.titleLarge?.color,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Buat kata sandi baru yang kuat (minimal 8 karakter)',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 24),
        _buildInput(
          controller: _passwordController,
          hint: 'Masukkan kata sandi baru',
          icon: Icons.lock_outline,
          isPassword: true,
          obscureText: _obscurePassword,
          onToggleObscure: () =>
              setState(() => _obscurePassword = !_obscurePassword),
          isDark: isDark,
        ),
        const SizedBox(height: 16),
        _buildInput(
          controller: _confirmPasswordController,
          hint: 'Konfirmasi kata sandi baru',
          icon: Icons.lock_outline,
          isPassword: true,
          obscureText: _obscureConfirmPassword,
          onToggleObscure: () => setState(
            () => _obscureConfirmPassword = !_obscureConfirmPassword,
          ),
          isDark: isDark,
        ),
      ],
    );
  }

  Widget _buildInput({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    required bool isDark,
    bool isPassword = false,
    bool obscureText = false,
    VoidCallback? onToggleObscure,
    TextInputType? keyboardType,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E262B) : Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:
              Theme.of(context).dividerTheme.color ??
              Colors.grey.withValues(alpha: 0.2),
        ),
      ),
      child: TextField(
        controller: controller,
        obscureText: isPassword ? obscureText : false,
        keyboardType: keyboardType,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Theme.of(context).disabledColor),
          prefixIcon: Icon(icon, color: Colors.grey[400], size: 22),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey[400],
                    size: 22,
                  ),
                  onPressed: onToggleObscure,
                )
              : null,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
        ),
      ),
    );
  }
}
