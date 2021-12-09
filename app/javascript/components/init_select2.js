import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.js-example-basic-multiple').select2({
    maximumSelectionLength: 2,
    placeholder: 'Max: 2',
    width: '80%',
    height: '100%',
  });
}

export { initSelect2 };
