在之前的iOS版本中，该window是键盘所在的window，后来加入了UIRemoteKeyboardWindow，专门用于承载键盘，但是UITextEffectsWindow仍然存在

在有textfield的应用中，只要textfield曾经被聚焦过，该window就会出现，并且不会再消失。