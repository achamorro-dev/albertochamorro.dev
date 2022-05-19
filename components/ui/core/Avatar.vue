<template>
  <div class="avatar">
    <img
      src="~/assets/images/avatar_home.png"
      alt="Avatar Alberto Chamorro"
      class="w-56 h-56 rounded-full"
    >
  </div>
</template>

<script>
export default {
  name: 'Avatar'
}
</script>

<style scoped>
.avatar {
  @apply rounded-full w-64 h-64 m-auto flex justify-center items-center shadow-md bg-custom-yellow border border-black;
  min-width: 16rem;
  animation: avatar-appear 0.2s ease-out;
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
