.class public Landroid/text/method/TextKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "TextKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/TextKeyListener$SettingsObserver;,
        Landroid/text/method/TextKeyListener$NullKeyListener;,
        Landroid/text/method/TextKeyListener$Capitalize;
    }
.end annotation


# static fields
.field static final ACTIVE:Ljava/lang/Object; = null

.field static final AUTO_CAP:I = 0x1

.field static final AUTO_PERIOD:I = 0x4

.field static final AUTO_TEXT:I = 0x2

.field static final CAPPED:Ljava/lang/Object; = null

.field static final INHIBIT_REPLACEMENT:Ljava/lang/Object; = null

.field static final LAST_TYPED:Ljava/lang/Object; = null

.field static final SHOW_PASSWORD:I = 0x8

.field private static sInstance:[Landroid/text/method/TextKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

.field private mPrefs:I

.field private mPrefsInited:Z

.field private mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/TextKeyListener;

    sput-object v0, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    .line 41
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 42
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .registers 3
    .parameter "cap"
    .parameter "autotext"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 68
    iput-boolean p2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    .line 69
    return-void
.end method

.method static synthetic access$000(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$102(Landroid/text/method/TextKeyListener;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    return p1
.end method

.method static synthetic access$200(Landroid/text/method/TextKeyListener;Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/text/method/TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static clear(Landroid/text/Editable;)V
    .registers 7
    .parameter "e"

    .prologue
    .line 158
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    .line 159
    sget-object v3, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 160
    sget-object v3, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 161
    sget-object v3, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 162
    sget-object v3, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 164
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 166
    .local v2, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    array-length v0, v2

    .line 167
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    if-ge v1, v0, :cond_30

    .line 168
    aget-object v3, v2, v1

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 170
    :cond_30
    return-void
.end method

.method public static getInstance()Landroid/text/method/TextKeyListener;
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;
    .registers 5
    .parameter "autotext"
    .parameter "cap"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-eqz p0, :cond_1f

    const/4 v2, 0x1

    :goto_9
    add-int v0, v1, v2

    .line 82
    .local v0, off:I
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_1a

    .line 83
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    new-instance v2, Landroid/text/method/TextKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 86
    :cond_1a
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 80
    .end local v0           #off:I
    :cond_1f
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;
    .registers 6
    .parameter "event"

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyboardDevice()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 184
    .local v1, kmap:Landroid/view/KeyCharacterMap;
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    .line 186
    .local v0, kind:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_18

    .line 187
    iget-boolean v2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    iget-object v3, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v2, v3}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v2

    .line 192
    :goto_17
    return-object v2

    .line 188
    :cond_18
    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    .line 189
    iget-boolean v2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    iget-object v3, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v2, v3}, Landroid/text/method/MultiTapKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;

    move-result-object v2

    goto :goto_17

    .line 192
    :cond_24
    invoke-static {}, Landroid/text/method/TextKeyListener$NullKeyListener;->getInstance()Landroid/text/method/TextKeyListener$NullKeyListener;

    move-result-object v2

    goto :goto_17
.end method

.method private initPrefs(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    .line 249
    new-instance v1, Landroid/text/method/TextKeyListener$SettingsObserver;

    invoke-direct {v1, p0}, Landroid/text/method/TextKeyListener$SettingsObserver;-><init>(Landroid/text/method/TextKeyListener;)V

    iput-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    .line 250
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    invoke-direct {p0, v0}, Landroid/text/method/TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V

    .line 253
    iput-boolean v3, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    .line 254
    return-void
.end method

.method public static shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z
    .registers 6
    .parameter "cap"
    .parameter "cs"
    .parameter "off"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    if-ne p0, v0, :cond_8

    move v0, v1

    .line 118
    :goto_7
    return v0

    .line 114
    :cond_8
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    if-ne p0, v0, :cond_e

    move v0, v2

    .line 115
    goto :goto_7

    .line 118
    :cond_e
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    if-ne p0, v0, :cond_1c

    const/16 v0, 0x2000

    :goto_14
    invoke-static {p1, p2, v0}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v2

    goto :goto_7

    :cond_1c
    const/16 v0, 0x4000

    goto :goto_14

    :cond_1f
    move v0, v1

    goto :goto_7
.end method

.method private updatePrefs(Landroid/content/ContentResolver;)V
    .registers 9
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 277
    const-string v4, "auto_caps"

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_39

    move v0, v5

    .line 278
    .local v0, cap:Z
    :goto_b
    const-string v4, "auto_replace"

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3b

    move v3, v5

    .line 279
    .local v3, text:Z
    :goto_14
    const-string v4, "auto_punctuate"

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3d

    move v1, v5

    .line 280
    .local v1, period:Z
    :goto_1d
    const-string v4, "show_password"

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3f

    move v2, v5

    .line 282
    .local v2, pw:Z
    :goto_26
    if-eqz v0, :cond_41

    move v4, v5

    :goto_29
    if-eqz v3, :cond_43

    const/4 v5, 0x2

    :goto_2c
    or-int/2addr v4, v5

    if-eqz v1, :cond_45

    const/4 v5, 0x4

    :goto_30
    or-int/2addr v4, v5

    if-eqz v2, :cond_47

    const/16 v5, 0x8

    :goto_35
    or-int/2addr v4, v5

    iput v4, p0, Landroid/text/method/TextKeyListener;->mPrefs:I

    .line 286
    return-void

    .end local v0           #cap:Z
    .end local v1           #period:Z
    .end local v2           #pw:Z
    .end local v3           #text:Z
    :cond_39
    move v0, v6

    .line 277
    goto :goto_b

    .restart local v0       #cap:Z
    :cond_3b
    move v3, v6

    .line 278
    goto :goto_14

    .restart local v3       #text:Z
    :cond_3d
    move v1, v6

    .line 279
    goto :goto_1d

    .restart local v1       #period:Z
    :cond_3f
    move v2, v6

    .line 280
    goto :goto_26

    .restart local v2       #pw:Z
    :cond_41
    move v4, v6

    .line 282
    goto :goto_29

    :cond_43
    move v5, v6

    goto :goto_2c

    :cond_45
    move v5, v6

    goto :goto_30

    :cond_47
    move v5, v6

    goto :goto_35
.end method


# virtual methods
.method public getInputType()I
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method getPrefs(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :try_start_1
    iget-boolean v0, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 291
    :cond_d
    invoke-direct {p0, p1}, Landroid/text/method/TextKeyListener;->initPrefs(Landroid/content/Context;)V

    .line 293
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    .line 295
    iget v0, p0, Landroid/text/method/TextKeyListener;->mPrefs:I

    return v0

    .line 293
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 130
    invoke-direct {p0, p4}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 132
    .local v0, im:Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "content"
    .parameter "event"

    .prologue
    .line 145
    invoke-direct {p0, p3}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 147
    .local v0, im:Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 138
    invoke-direct {p0, p4}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 140
    .local v0, im:Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .parameter "s"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 172
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 8
    .parameter "s"
    .parameter "what"
    .parameter "start"
    .parameter "end"
    .parameter "st"
    .parameter "en"

    .prologue
    .line 177
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_9

    .line 178
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 180
    :cond_9
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .parameter "s"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 173
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_20

    .line 235
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 236
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_19

    .line 237
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 240
    :cond_19
    iput-object v2, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    .line 241
    iput-object v2, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    .line 244
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_20
    return-void
.end method
