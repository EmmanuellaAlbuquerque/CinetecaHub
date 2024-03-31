function openNotification(text) {
  new Notify ({
    status: 'success',
    title: 'Salvo com sucesso!',
    text: text,
    effect: 'fade',
    speed: 300,
    customClass: '',
    customIcon: '',
    showIcon: true,
    showCloseButton: true,
    autoclose: true,
    autotimeout: 3000,
    notificationsGap: null,
    notificationsPadding: null,
    type: 'outline',
    position: 'right bottom',
    customWrapper: '',
  })
}
