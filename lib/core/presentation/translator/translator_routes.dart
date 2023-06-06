abstract class TR {
  //========================================
  // Authentication
  //========================================
  
  
  // On Boarding
  //========================================
  static String get _onBoarding => 'onboarding';
  static String get obFinishButton => '$_onBoarding.on_finish_button';

  //---------------------
  //slides
  static String get _firstSlide => '$_onBoarding.first_slide';
  static String get _secondSlide => '$_onBoarding.second_slide';
  static String get _thirdSlide => '$_onBoarding.third_slide';

  static final Map<int, String> _slides = {
    1: _firstSlide,
    2: _secondSlide,
    3: _thirdSlide,
  };

  static String slideTitle(int option) {
    return '${_slides[option] ?? _firstSlide}.title';
  }
  static String slideText(int option) {
    return '${_slides[option] ?? _firstSlide}.text';
  }
}