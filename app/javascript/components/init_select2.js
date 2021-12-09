import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.js-example-basic-multiple').select2({
    maximumSelectionLength: 1,
    placeholder: 'Choose 1 ingredient...',
    width: '80%',
    height: '100%',
  });
}

export { initSelect2 };
