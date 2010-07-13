.class public Lcom/android/settings/LanguageSettings;
.super Landroid/preference/PreferenceActivity;
.source "LanguageSettings.java"


# instance fields
.field private mCheckboxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveHardKeyboard:Z

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInputMethodId:Ljava/lang/String;

.field private mLastTickedInputMethodId:Ljava/lang/String;

.field private mRootDirectory:Ljava/lang/String;

.field final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 51
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/LanguageSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    return-object p1
.end method

.method public static getInputMethodIdFromKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "key"

    .prologue
    .line 60
    return-object p0
.end method

.method private isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 3
    .parameter "property"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private onCreateIMM()V
    .registers 16

    .prologue
    .line 91
    const-string v11, "input_method"

    invoke-virtual {p0, v11}, Lcom/android/settings/LanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 93
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "default_input_method"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 98
    const-string v11, "text_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 100
    .local v10, textCategory:Landroid/preference/PreferenceGroup;
    iget-object v11, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    if-nez v11, :cond_88

    const/4 v11, 0x0

    move v0, v11

    .line 102
    .local v0, N:I
    :goto_28
    const/4 v2, 0x0

    .local v2, i:I
    :goto_29
    if-ge v2, v0, :cond_a5

    .line 103
    iget-object v11, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 104
    .local v7, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, prefKey:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 107
    .local v4, label:Ljava/lang/CharSequence;
    invoke-direct {p0, v7}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v9

    .line 110
    .local v9, systemIME:Z
    iget-boolean v11, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    if-nez v11, :cond_4c

    const/4 v11, 0x1

    if-le v0, v11, :cond_5f

    if-nez v9, :cond_5f

    .line 111
    :cond_4c
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 112
    .local v1, chkbxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v10, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 115
    iget-object v11, p0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v1           #chkbxPref:Landroid/preference/CheckBoxPreference;
    :cond_5f
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_85

    .line 120
    new-instance v6, Landroid/preference/PreferenceScreen;

    const/4 v11, 0x0

    invoke-direct {v6, p0, v11}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    .local v6, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    const/4 v11, 0x1

    if-ne v0, v11, :cond_90

    .line 124
    const v11, 0x7f0802f9

    invoke-virtual {p0, v11}, Lcom/android/settings/LanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    :goto_82
    invoke-virtual {v10, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 102
    .end local v6           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 100
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #label:Ljava/lang/CharSequence;
    .end local v5           #prefKey:Ljava/lang/String;
    .end local v7           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v9           #systemIME:Z
    :cond_88
    iget-object v11, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move v0, v11

    goto :goto_28

    .line 126
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #label:Ljava/lang/CharSequence;
    .restart local v5       #prefKey:Ljava/lang/String;
    .restart local v6       #prefScreen:Landroid/preference/PreferenceScreen;
    .restart local v7       #property:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v9       #systemIME:Z
    :cond_90
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0802f8

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, settingsLabel:Ljava/lang/CharSequence;
    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_82

    .line 133
    .end local v4           #label:Ljava/lang/CharSequence;
    .end local v5           #prefKey:Ljava/lang/String;
    .end local v6           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v7           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v8           #settingsLabel:Ljava/lang/CharSequence;
    .end local v9           #systemIME:Z
    :cond_a5
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f040011

    invoke-virtual {p0, v1}, Lcom/android/settings/LanguageSettings;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v3, :cond_22

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "language_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    :cond_22
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 75
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4b

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "hardkeyboard_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    :goto_40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    .line 82
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->onCreateIMM()V

    .line 83
    return-void

    .line 79
    :cond_4b
    iput-boolean v3, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    goto :goto_40
.end method

.method protected onPause()V
    .registers 14

    .prologue
    const-string v12, ""

    .line 165
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 170
    .local v2, firstEnabled:I
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 171
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_14
    if-ge v4, v0, :cond_5e

    .line 172
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 173
    .local v7, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, id:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 175
    .local v6, pref:Landroid/preference/CheckBoxPreference;
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 176
    .local v3, hasIt:Z
    invoke-direct {p0, v7}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v8

    .line 177
    .local v8, systemIme:Z
    const/4 v9, 0x1

    if-eq v0, v9, :cond_37

    if-eqz v8, :cond_3b

    :cond_37
    iget-boolean v9, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v9, :cond_43

    :cond_3b
    if-eqz v6, :cond_57

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 179
    :cond_43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_4e

    const/16 v9, 0x3a

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_4e
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    if-gez v2, :cond_54

    .line 182
    move v2, v4

    .line 171
    :cond_54
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 184
    :cond_57
    if-eqz v3, :cond_54

    .line 185
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_54

    .line 190
    .end local v3           #hasIt:Z
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #pref:Landroid/preference/CheckBoxPreference;
    .end local v7           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v8           #systemIme:Z
    :cond_5e
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v9, :cond_6c

    const-string v9, ""

    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 191
    :cond_6c
    if-ltz v2, :cond_99

    .line 192
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 198
    :cond_7c
    :goto_7c
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_input_methods"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "default_input_method"

    iget-object v11, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v11, :cond_9d

    iget-object v11, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    :goto_95
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    return-void

    .line 194
    :cond_99
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_7c

    .line 200
    :cond_9d
    const-string v11, ""

    move-object v11, v12

    goto :goto_95
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 23
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 211
    const-string v14, "ro.monkey"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 212
    const/4 v14, 0x0

    .line 275
    :goto_d
    return v14

    .line 215
    :cond_e
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    move v14, v0

    if-eqz v14, :cond_f5

    .line 216
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v6, v0

    .line 217
    .local v6, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/LanguageSettings;->getInputMethodIdFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, id:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_e3

    .line 219
    const/4 v13, 0x0

    .line 220
    .local v13, selImi:Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    .line 221
    .local v4, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_33
    if-ge v8, v4, :cond_61

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 223
    .local v10, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5e

    .line 224
    move-object v13, v10

    .line 225
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v14

    if-eqz v14, :cond_5e

    .line 227
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 228
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v14

    goto :goto_d

    .line 221
    :cond_5e
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    .line 232
    .end local v10           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_61
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 233
    if-nez v13, :cond_6c

    .line 234
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v14

    goto :goto_d

    .line 236
    :cond_6c
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v15, 0x1040014

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1080027

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0802dc

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LanguageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x104000a

    new-instance v16, Lcom/android/settings/LanguageSettings$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/LanguageSettings$2;-><init>(Lcom/android/settings/LanguageSettings;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/high16 v15, 0x104

    new-instance v16, Lcom/android/settings/LanguageSettings$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings$1;-><init>(Lcom/android/settings/LanguageSettings;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 258
    .local v7, d:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 275
    .end local v4           #N:I
    .end local v6           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v7           #d:Landroid/app/AlertDialog;
    .end local v8           #i:I
    .end local v9           #id:Ljava/lang/String;
    .end local v13           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_dd
    :goto_dd
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v14

    goto/16 :goto_d

    .line 259
    .restart local v6       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v9       #id:Ljava/lang/String;
    :cond_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_dd

    .line 260
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    goto :goto_dd

    .line 262
    .end local v6           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v9           #id:Ljava/lang/String;
    :cond_f5
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/PreferenceScreen;

    move v14, v0

    if-eqz v14, :cond_dd

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v14

    if-nez v14, :cond_dd

    .line 264
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v12, v0

    .line 265
    .local v12, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, activityName:Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "."

    invoke-virtual {v5, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 268
    .local v11, packageName:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_dd

    .line 269
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v8, i:Landroid/content/Intent;
    invoke-virtual {v8, v11, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_dd
.end method

.method protected onResume()V
    .registers 10

    .prologue
    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 139
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 140
    .local v1, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_input_methods"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, enabledStr:Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 143
    iget-object v6, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 144
    .local v6, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v6, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 145
    :goto_19
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 146
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 151
    .end local v6           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_27
    iget-object v7, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 152
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2e
    if-ge v3, v0, :cond_5a

    .line 153
    iget-object v7, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, id:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 156
    .local v5, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_57

    .line 157
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 160
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #pref:Landroid/preference/CheckBoxPreference;
    :cond_5a
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 161
    return-void
.end method
