/* Process data at last executed element */
assertThat(((Order)result.data().last()).getValid()).isFalse();

/* Process data at elements last execution */
assertThat(((Order)result.data().lastOnElement(writeInvoiceElement)).getValid()).isFalse();

/* Process data for each execution of the element */
result.data().onElement(writeInvoiceElement)
        .stream()
        .map(data -> (Order)data)
        .forEach(data -> assertThat(data.getValid()).isFalse());
