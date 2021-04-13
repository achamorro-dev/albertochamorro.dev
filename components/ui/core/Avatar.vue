<template>
  <div class="avatar-bg primary-gradient">
    <img
      src="../../../assets/images/avatar_home.png"
      class="w-56 h-56 rounded-full"
    />
  </div>
</template>

<script>
export default {
  name: 'Avatar',
}
</script>

<style>
.avatar-bg {
  @apply rounded-full w-64 h-64 flex justify-center items-center;
  animation: avatar-appear 0.3s ease-out;
}

@keyframes avatar-appear {
  0% {
    transform: scale(0);
  }
  80% {
    transform: scale(1.2);
  }
  100% {
    transform: scale(1);
  }
}
</style>
