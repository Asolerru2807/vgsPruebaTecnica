<!-- Modal Add Articles -->
<div id="addArticleModal" class="modal hidden fixed inset-0 bg-gray-600 bg-opacity-50 flex justify-center items-center">
    <div class="modal-content bg-white w-1/2 p-6 rounded shadow-lg">
        <form action="{{ route('articles.store') }}" method="POST">
            @csrf
            <!-- Title -->
            <div class="mb-4">
                <label for="title" class="block text-gray-700 text-sm font-bold mb-2">{{ __('Title') }}:</label>
                <input type="text" id="title" name="title" class="w-full border rounded py-2 px-3" required>
            </div>
            <!-- Content -->
            <div class="mb-4">
                <label for="content" class="block text-gray-700 text-sm font-bold mb-2">{{ __('Content') }}:</label>
                <textarea type="text" id="content" name="content" class="w-full border rounded py-2 px-3" required></textarea>
            </div>
            <!-- Slug -->
            <div class="mb-4">
                <label for="slug" class="block text-gray-700 text-sm font-bold mb-2">{{ __('Slug') }}:</label>
                <input type="text" id="slug" name="slug" class="w-full border rounded py-2 px-3" required>
            </div>
            <!-- Categories -->
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2">{{ __('Categories') }}:</label>
                <div class="flex flex-col">
                    @foreach ($categories as $categorie)
                        <label class="inline-flex items-center">
                            <input type="checkbox" name="categories[]" class="form-checkbox"
                                value="{{ $categorie->id }}">
                            <span class="ml-2">{{ __($categorie->name) }}</span>
                        </label>
                    @endforeach
                </div>
            </div>
            <!-- Buttons -->
            <div class="flex justify-end">
                <button type="submit"
                    class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700">{{ __('Add article') }}</button>
                <button class="ml-2 bg-red-500 text-white px-4 py-2 rounded hover:bg-red-700"
                    onclick="closeModalAddArticle()">{{ __('Close') }}</button>
            </div>
        </form>
    </div>
</div>
<!-- /Modal Add Articles -->

<!-- Modal Update Articles -->
<div id="updateArticleModal"
    class="modal hidden fixed inset-0 bg-gray-600 bg-opacity-50 flex justify-center items-center">
    <div class="modal-content bg-white w-1/2 p-6 rounded shadow-lg">
        <form method="POST" action="{{ route('articles.update', $article) }}">
            @csrf @method('PUT')
            <!-- Title -->
            <div class="mb-4">
                <label for="title" class="block text-gray-700 text-sm font-bold mb-2">{{ __('Title') }}:</label>
                <input type="text" id="title" name="title" class="w-full border rounded py-2 px-3">
            </div>
            <!-- Content -->
            <div class="mb-4">
                <label for="content" class="block text-gray-700 text-sm font-bold mb-2">{{ __('Content') }}:</label>
                <textarea type="text" id="content" name="content" class="w-full border rounded py-2 px-3"></textarea>
            </div>
            <!-- Slug -->
            <div class="mb-4">
                <label for="slug" class="block text-gray-700 text-sm font-bold mb-2">{{ __('Slug') }}:</label>
                <input type="text" id="slug" name="slug" class="w-full border rounded py-2 px-3">
            </div>
            <!-- Categories -->
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2">{{ __('Categories') }}:</label>
                <div class="flex flex-col">
                    @foreach ($categories as $categorie)
                        <label class="inline-flex items-center">
                            <input type="checkbox" name="categories[]" class="form-checkbox"
                                value="{{ $categorie->id }}">
                            <span class="ml-2">{{ __($categorie->name) }}</span>
                        </label>
                    @endforeach
                </div>
            </div>
            <!-- Buttons -->
            <div class="flex justify-end">
                <button type="submit"
                    class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700">{{ __('Edit article') }}</button>
                <button class="ml-2 bg-red-500 text-white px-4 py-2 rounded hover:bg-red-700"
                    onclick="closeModalUpdateArticle()">{{ __('Close') }}</button>
            </div>
        </form>
    </div>
</div>
<!-- /Modal Update Articles -->
