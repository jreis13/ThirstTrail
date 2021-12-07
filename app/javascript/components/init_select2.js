import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2();
  $(".js-example-basic-multiple-limit").select2({
    maximumSelectionLength: 2
  });
};

export { initSelect2 };
