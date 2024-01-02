<x-app-layout>
    <x-slot name="header">
        <div class="flex items-center justify-between">
            <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
                {{ $article->title }}
            </h2>

            <!-- Comprobamos si esta logeado para que muestre las opciones de editar y eliminar -->
            @can('update', $article)
                <div class="flex items-center space-x-4">
                    <x-secondary-button onclick="openModalUpdateArticle()">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L10.582 16.07a4.5 4.5 0 0 1-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 0 1 1.13-1.897l8.932-8.931Zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0 1 15.75 21H5.25A2.25 2.25 0 0 1 3 18.75V8.25A2.25 2.25 0 0 1 5.25 6H10" />
                        </svg>
                    </x-secondary-button>

                    <form method="POST" action="{{ route('articles.destroy', $article) }}">
                        @csrf @method('DELETE')
                        <x-danger-button type="submit">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                                stroke="currentColor" class="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
                            </svg>
                        </x-danger-button>
                    </form>
                </div>
            @endcan
        </div>
    </x-slot>


    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="mt-6 bg-white dark:bg-gray-800 shadow-sm rounded-lg divide-y dark:divide-gray-900">

                <div class="p-6 flex space-x-2">
                    <div class="flex-1">
                        <p class="mt-4 text-lg text-gray-900 dark:text-gray-100">{{ $article->content }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>


@include('modals.articles')

<script>
    // Funciones para abrir y cerrar los modales
    function openModalAddArticle() {
        document.getElementById('addArticleModal').classList.remove('hidden');
    }

    function closeModalAddArticle() {
        document.getElementById('addArticleModal').classList.add('hidden');
    }

    function openModalUpdateArticle() {
        document.getElementById('updateArticleModal').classList.remove('hidden');
    }

    function closeModalUpdateArticle() {
        document.getElementById('updateArticleModal').classList.add('hidden');
    }
</script>
