.class public Lcom/android/settings/UserDictionarySettings;
.super Landroid/app/ListActivity;
.source "UserDictionarySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserDictionarySettings$MyAdapter;
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_DELETE:I = 0x2

.field private static final CONTEXT_MENU_EDIT:I = 0x1

.field private static final DELETE_SELECTION:Ljava/lang/String; = "word=?"

.field private static final DIALOG_ADD_OR_EDIT:I = 0x0

.field private static final EXTRA_WORD:Ljava/lang/String; = "word"

.field private static final INSTANCE_KEY_ADDED_WORD:Ljava/lang/String; = "DIALOG_ADDED_WORD"

.field private static final INSTANCE_KEY_DIALOG_EDITING_WORD:Ljava/lang/String; = "DIALOG_EDITING_WORD"

.field private static final OPTIONS_MENU_ADD:I = 0x1

.field private static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_SELECTION:Ljava/lang/String; = "locale=? OR locale is null"


# instance fields
.field private mAddedWordAlready:Z

.field private mAutoReturn:Z

.field private mCursor:Landroid/database/Cursor;

.field private mDialogEditingWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UserDictionarySettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/settings/UserDictionarySettings;->mAutoReturn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/UserDictionarySettings;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/UserDictionarySettings;->onAddOrEditFinished(Ljava/lang/String;)V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 131
    new-instance v0, Lcom/android/settings/UserDictionarySettings$MyAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "word"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method private createCursor()Landroid/database/Cursor;
    .registers 8

    .prologue
    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, currentLocale:Ljava/lang/String;
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale=? OR locale is null"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    const-string v5, "UPPER(word)"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/UserDictionarySettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private deleteWord(Ljava/lang/String;)V
    .registers 7
    .parameter "word"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "word=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private getWord(I)Ljava/lang/String;
    .registers 5
    .parameter "position"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 195
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onAddOrEditFinished(Ljava/lang/String;)V
    .registers 5
    .parameter "word"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    .line 240
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    .line 247
    return-void
.end method

.method private showAddOrEditDialog(Ljava/lang/String;)V
    .registers 3
    .parameter "editingWord"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/UserDictionarySettings;->showDialog(I)V

    .line 191
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    .line 157
    .local v2, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v4, :cond_c

    move v4, v5

    .line 172
    :goto_b
    return v4

    .line 159
    :cond_c
    move-object v0, v2

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 160
    .local v1, adapterMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v4}, Lcom/android/settings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, word:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_2a

    move v4, v5

    .line 172
    goto :goto_b

    .line 164
    :pswitch_1f
    invoke-direct {p0, v3}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    move v4, v6

    .line 165
    goto :goto_b

    .line 168
    :pswitch_24
    invoke-direct {p0, v3}, Lcom/android/settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    move v4, v6

    .line 169
    goto :goto_b

    .line 162
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v2, 0x7f03001e

    invoke-virtual {p0, v2}, Lcom/android/settings/UserDictionarySettings;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/UserDictionarySettings;->createCursor()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/UserDictionarySettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    const v2, 0x7f0a0070

    invoke-virtual {p0, v2}, Lcom/android/settings/UserDictionarySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, emptyView:Landroid/widget/TextView;
    const v2, 0x7f0802e5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 90
    .local v1, listView:Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/settings/UserDictionarySettings;->registerForContextMenu(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 144
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v2, :cond_6

    .line 152
    :goto_5
    return-void

    .line 146
    :cond_6
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 147
    .local v1, adapterMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/android/settings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 148
    const/4 v2, 0x1

    const v3, 0x7f0802e3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 150
    const/4 v2, 0x2

    const v3, 0x7f0802e4

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, content:Landroid/view/View;
    const v2, 0x7f0a004d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 204
    .local v1, editText:Landroid/widget/EditText;
    const v2, 0x10001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 207
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v3, :cond_4b

    const v3, 0x7f0802e2

    :goto_27
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/UserDictionarySettings$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/UserDictionarySettings$2;-><init>(Lcom/android/settings/UserDictionarySettings;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/UserDictionarySettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/UserDictionarySettings$1;-><init>(Lcom/android/settings/UserDictionarySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :cond_4b
    const v3, 0x7f0802e1

    goto :goto_27
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    const v0, 0x7f0802e0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 179
    return v2
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 139
    invoke-virtual {p0, p2}, Lcom/android/settings/UserDictionarySettings;->openContextMenu(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7
    .parameter "id"
    .parameter "d"

    .prologue
    .line 225
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 226
    .local v1, dialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v3, :cond_1d

    const v3, 0x7f0802e2

    :goto_b
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 229
    const v3, 0x7f0a004d

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 230
    .local v2, editText:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void

    .line 226
    .end local v2           #editText:Landroid/widget/EditText;
    :cond_1d
    const v3, 0x7f0802e1

    goto :goto_b
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "DIALOG_EDITING_WORD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    .line 112
    const-string v0, "DIALOG_ADDED_WORD"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    .line 113
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 99
    iget-boolean v1, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    if-nez v1, :cond_29

    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "word"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, word:Ljava/lang/String;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/UserDictionarySettings;->mAutoReturn:Z

    .line 103
    if-eqz v0, :cond_29

    .line 104
    invoke-direct {p0, v0}, Lcom/android/settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 107
    .end local v0           #word:Ljava/lang/String;
    :cond_29
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    const-string v0, "DIALOG_EDITING_WORD"

    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "DIALOG_ADDED_WORD"

    iget-boolean v1, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    return-void
.end method
