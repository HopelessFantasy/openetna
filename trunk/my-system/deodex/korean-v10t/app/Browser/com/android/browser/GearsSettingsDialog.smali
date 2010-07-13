.class Lcom/android/browser/GearsSettingsDialog;
.super Lcom/android/browser/GearsBaseDialog;
.source "GearsSettingsDialog.java"

# interfaces
.implements Lcom/android/browser/GearsPermissions$PermissionsChangesListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;
    }
.end annotation


# static fields
.field private static final CONFIRMATION_REMOVE_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GearsPermissionsDialog"


# instance fields
.field private final LOCAL_STORAGE:Lcom/android/browser/GearsPermissions$PermissionType;

.field private final LOCATION_DATA:Lcom/android/browser/GearsPermissions$PermissionType;

.field private mChanges:Z

.field private mCurrentPermissions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/GearsPermissions$OriginPermissions;",
            ">;"
        }
    .end annotation
.end field

.field mListAdapter:Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;

.field private mOriginalPermissions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/GearsPermissions$OriginPermissions;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/GearsPermissions$PermissionType;",
            ">;"
        }
    .end annotation
.end field

.field private mSitesPermissions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/GearsPermissions$OriginPermissions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 6
    .parameter "activity"
    .parameter "handler"
    .parameter "arguments"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/GearsBaseDialog;-><init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V

    .line 61
    iput-object v0, p0, Lcom/android/browser/GearsSettingsDialog;->mSitesPermissions:Ljava/util/Vector;

    .line 62
    iput-object v0, p0, Lcom/android/browser/GearsSettingsDialog;->mOriginalPermissions:Ljava/util/Vector;

    .line 63
    iput-object v0, p0, Lcom/android/browser/GearsSettingsDialog;->mCurrentPermissions:Ljava/util/Vector;

    .line 69
    new-instance v0, Lcom/android/browser/GearsPermissions$PermissionType;

    const-string v1, "localStorage"

    invoke-direct {v0, v1}, Lcom/android/browser/GearsPermissions$PermissionType;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/GearsSettingsDialog;->LOCAL_STORAGE:Lcom/android/browser/GearsPermissions$PermissionType;

    .line 71
    new-instance v0, Lcom/android/browser/GearsPermissions$PermissionType;

    const-string v1, "locationData"

    invoke-direct {v0, v1}, Lcom/android/browser/GearsPermissions$PermissionType;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/GearsSettingsDialog;->LOCATION_DATA:Lcom/android/browser/GearsPermissions$PermissionType;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/GearsSettingsDialog;->mChanges:Z

    .line 82
    const v0, 0x7f030010

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/GearsSettingsDialog;)Lcom/android/browser/GearsPermissions$PermissionType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog;->LOCAL_STORAGE:Lcom/android/browser/GearsPermissions$PermissionType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/GearsSettingsDialog;)Lcom/android/browser/GearsPermissions$PermissionType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog;->LOCATION_DATA:Lcom/android/browser/GearsPermissions$PermissionType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/GearsSettingsDialog;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog;->mSitesPermissions:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/GearsSettingsDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/browser/GearsSettingsDialog;->setMainTitle()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/GearsSettingsDialog;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog;->mPermissions:Ljava/util/Vector;

    return-object v0
.end method

.method private setMainTitle()V
    .registers 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/browser/GearsSettingsDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f070088

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, windowTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/GearsSettingsDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method


# virtual methods
.method public closeDialog(I)Ljava/lang/String;
    .registers 4
    .parameter "closingType"

    .prologue
    .line 451
    iget-boolean v1, p0, Lcom/android/browser/GearsSettingsDialog;->mChanges:Z

    invoke-virtual {p0, v1}, Lcom/android/browser/GearsSettingsDialog;->computeDiff(Z)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, ret:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/browser/GearsSettingsDialog;->mDebug:Z

    if-eqz v1, :cond_d

    .line 454
    invoke-virtual {p0}, Lcom/android/browser/GearsSettingsDialog;->printPermissions()V

    .line 457
    :cond_d
    return-object v0
.end method

.method public computeDiff(Z)Ljava/lang/String;
    .registers 16
    .parameter "modif"

    .prologue
    .line 415
    const/4 v9, 0x0

    .line 417
    .local v9, ret:Ljava/lang/String;
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 418
    .local v8, results:Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 420
    .local v7, permissions:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-eqz p1, :cond_71

    iget-object v12, p0, Lcom/android/browser/GearsSettingsDialog;->mOriginalPermissions:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v2, v12, :cond_71

    .line 421
    iget-object v12, p0, Lcom/android/browser/GearsSettingsDialog;->mOriginalPermissions:Ljava/util/Vector;

    invoke-virtual {v12, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/GearsPermissions$OriginPermissions;

    .line 422
    .local v5, original:Lcom/android/browser/GearsPermissions$OriginPermissions;
    iget-object v12, p0, Lcom/android/browser/GearsSettingsDialog;->mCurrentPermissions:Ljava/util/Vector;

    invoke-virtual {v12, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/GearsPermissions$OriginPermissions;

    .line 423
    .local v0, current:Lcom/android/browser/GearsPermissions$OriginPermissions;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 424
    .local v6, permission:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 426
    .local v4, modifications:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2d
    iget-object v12, p0, Lcom/android/browser/GearsSettingsDialog;->mPermissions:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v3, v12, :cond_60

    .line 427
    iget-object v12, p0, Lcom/android/browser/GearsSettingsDialog;->mPermissions:Ljava/util/Vector;

    invoke-virtual {v12, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/browser/GearsPermissions$PermissionType;

    .line 429
    .local v11, type:Lcom/android/browser/GearsPermissions$PermissionType;
    invoke-virtual {v0, v11}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getPermission(Lcom/android/browser/GearsPermissions$PermissionType;)I

    move-result v12

    invoke-virtual {v5, v11}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getPermission(Lcom/android/browser/GearsPermissions$PermissionType;)I

    move-result v13

    if-eq v12, v13, :cond_5d

    .line 430
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 431
    .local v10, state:Lorg/json/JSONObject;
    const-string v12, "permissionState"

    invoke-virtual {v0, v11}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getPermission(Lcom/android/browser/GearsPermissions$PermissionType;)I

    move-result v13

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 432
    invoke-virtual {v11}, Lcom/android/browser/GearsPermissions$PermissionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const/4 v4, 0x1

    .line 426
    .end local v10           #state:Lorg/json/JSONObject;
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 437
    .end local v11           #type:Lcom/android/browser/GearsPermissions$PermissionType;
    :cond_60
    if-eqz v4, :cond_6e

    .line 438
    const-string v12, "name"

    invoke-virtual {v0}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getOrigin()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 420
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 442
    .end local v0           #current:Lcom/android/browser/GearsPermissions$OriginPermissions;
    .end local v3           #j:I
    .end local v4           #modifications:Z
    .end local v5           #original:Lcom/android/browser/GearsPermissions$OriginPermissions;
    .end local v6           #permission:Lorg/json/JSONObject;
    :cond_71
    const-string v12, "modifiedOrigins"

    invoke-virtual {v8, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_79} :catch_7b

    move-result-object v9

    .line 447
    .end local v2           #i:I
    .end local v7           #permissions:Lorg/json/JSONArray;
    .end local v8           #results:Lorg/json/JSONObject;
    :goto_7a
    return-object v9

    .line 444
    :catch_7b
    move-exception v12

    move-object v1, v12

    .line 445
    .local v1, e:Lorg/json/JSONException;
    const-string v12, "GearsPermissionsDialog"

    const-string v13, "JSON exception "

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a
.end method

.method public handleBackButton()Z
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog;->mListAdapter:Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;

    invoke-virtual {v0}, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->backButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/GearsSettingsDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700f2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700f3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/browser/GearsSettingsDialog$1;

    invoke-direct {v2, p0}, Lcom/android/browser/GearsSettingsDialog$1;-><init>(Lcom/android/browser/GearsSettingsDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public printPermissions()V
    .registers 5

    .prologue
    const-string v3, "GearsPermissionsDialog"

    .line 397
    const-string v2, "GearsPermissionsDialog"

    const-string v2, "Original Permissions: "

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v2, p0, Lcom/android/browser/GearsSettingsDialog;->mOriginalPermissions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 399
    iget-object v2, p0, Lcom/android/browser/GearsSettingsDialog;->mOriginalPermissions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/GearsPermissions$OriginPermissions;

    .line 400
    .local v1, p:Lcom/android/browser/GearsPermissions$OriginPermissions;
    invoke-virtual {v1}, Lcom/android/browser/GearsPermissions$OriginPermissions;->print()V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 402
    .end local v1           #p:Lcom/android/browser/GearsPermissions$OriginPermissions;
    :cond_20
    const-string v2, "GearsPermissionsDialog"

    const-string v2, "Current Permissions: "

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    :goto_28
    iget-object v2, p0, Lcom/android/browser/GearsSettingsDialog;->mSitesPermissions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 404
    iget-object v2, p0, Lcom/android/browser/GearsSettingsDialog;->mSitesPermissions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/GearsPermissions$OriginPermissions;

    .line 405
    .restart local v1       #p:Lcom/android/browser/GearsPermissions$OriginPermissions;
    invoke-virtual {v1}, Lcom/android/browser/GearsPermissions$OriginPermissions;->print()V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 407
    .end local v1           #p:Lcom/android/browser/GearsPermissions$OriginPermissions;
    :cond_3e
    return-void
.end method

.method public setPermission(Lcom/android/browser/GearsPermissions$PermissionType;I)Z
    .registers 4
    .parameter "type"
    .parameter "perm"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/browser/GearsSettingsDialog;->mChanges:Z

    if-nez v0, :cond_7

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/GearsSettingsDialog;->mChanges:Z

    .line 185
    :cond_7
    iget-boolean v0, p0, Lcom/android/browser/GearsSettingsDialog;->mChanges:Z

    return v0
.end method

.method public setup()V
    .registers 21

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->LOCAL_STORAGE:Lcom/android/browser/GearsPermissions$PermissionType;

    move-object/from16 v16, v0

    const v17, 0x7f0700ea

    const v18, 0x7f0700eb

    const v19, 0x7f0700ec

    invoke-virtual/range {v16 .. v19}, Lcom/android/browser/GearsPermissions$PermissionType;->setResources(III)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->LOCATION_DATA:Lcom/android/browser/GearsPermissions$PermissionType;

    move-object/from16 v16, v0

    const v17, 0x7f0700ed

    const v18, 0x7f0700ee

    const v19, 0x7f0700ef

    invoke-virtual/range {v16 .. v19}, Lcom/android/browser/GearsPermissions$PermissionType;->setResources(III)V

    .line 94
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/GearsSettingsDialog;->mPermissions:Ljava/util/Vector;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mPermissions:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->LOCAL_STORAGE:Lcom/android/browser/GearsPermissions$PermissionType;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mPermissions:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->LOCATION_DATA:Lcom/android/browser/GearsPermissions$PermissionType;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static/range {p0 .. p0}, Lcom/android/browser/GearsPermissions$OriginPermissions;->setListener(Lcom/android/browser/GearsPermissions$PermissionsChangesListener;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/GearsSettingsDialog;->setupDialog()V

    .line 116
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/GearsSettingsDialog;->mSitesPermissions:Ljava/util/Vector;

    .line 117
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/GearsSettingsDialog;->mOriginalPermissions:Ljava/util/Vector;

    .line 120
    :try_start_69
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mDialogArguments:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v7, json:Lorg/json/JSONObject;
    const-string v16, "permissions"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_14f

    .line 122
    const-string v16, "permissions"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 123
    .local v8, jsonArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_8c
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v16

    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_14f

    .line 124
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 125
    .local v6, infos:Lorg/json/JSONObject;
    const/4 v13, 0x0

    .line 126
    .local v13, name:Ljava/lang/String;
    const/4 v11, 0x0

    .line 127
    .local v11, localStorage:I
    const/4 v12, 0x0

    .line 128
    .local v12, locationData:I
    const-string v16, "name"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b0

    .line 129
    const-string v16, "name"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 131
    :cond_b0
    const-string v16, "localStorage"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d8

    .line 132
    const-string v16, "localStorage"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 133
    .local v14, perm:Lorg/json/JSONObject;
    const-string v16, "permissionState"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d8

    .line 134
    const-string v16, "permissionState"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 137
    .end local v14           #perm:Lorg/json/JSONObject;
    :cond_d8
    const-string v16, "locationData"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_100

    .line 138
    const-string v16, "locationData"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 139
    .restart local v14       #perm:Lorg/json/JSONObject;
    const-string v16, "permissionState"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_100

    .line 140
    const-string v16, "permissionState"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 143
    .end local v14           #perm:Lorg/json/JSONObject;
    :cond_100
    new-instance v15, Lcom/android/browser/GearsPermissions$OriginPermissions;

    invoke-direct {v15, v13}, Lcom/android/browser/GearsPermissions$OriginPermissions;-><init>(Ljava/lang/String;)V

    .line 144
    .local v15, perms:Lcom/android/browser/GearsPermissions$OriginPermissions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->LOCAL_STORAGE:Lcom/android/browser/GearsPermissions$PermissionType;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/GearsPermissions$OriginPermissions;->setPermission(Lcom/android/browser/GearsPermissions$PermissionType;I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->LOCATION_DATA:Lcom/android/browser/GearsPermissions$PermissionType;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/GearsPermissions$OriginPermissions;->setPermission(Lcom/android/browser/GearsPermissions$PermissionType;I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mSitesPermissions:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mOriginalPermissions:Ljava/util/Vector;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/browser/GearsPermissions$OriginPermissions;

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/browser/GearsPermissions$OriginPermissions;-><init>(Lcom/android/browser/GearsPermissions$OriginPermissions;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_13c
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_13c} :catch_140

    .line 123
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8c

    .line 151
    .end local v5           #i:I
    .end local v6           #infos:Lorg/json/JSONObject;
    .end local v7           #json:Lorg/json/JSONObject;
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v11           #localStorage:I
    .end local v12           #locationData:I
    .end local v13           #name:Ljava/lang/String;
    .end local v15           #perms:Lcom/android/browser/GearsPermissions$OriginPermissions;
    :catch_140
    move-exception v16

    move-object/from16 v4, v16

    .line 152
    .local v4, e:Lorg/json/JSONException;
    const-string v16, "GearsPermissionsDialog"

    const-string v17, "JSON exception "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v4           #e:Lorg/json/JSONException;
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mSitesPermissions:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/GearsSettingsDialog;->mCurrentPermissions:Ljava/util/Vector;

    .line 156
    const v16, 0x7f0c003c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/GearsSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 157
    .local v10, listView:Landroid/view/View;
    if-eqz v10, :cond_1b0

    .line 158
    move-object v0, v10

    check-cast v0, Landroid/widget/ListView;

    move-object v9, v0

    .line 159
    .local v9, list:Landroid/widget/ListView;
    new-instance v16, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mSitesPermissions:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;-><init>(Lcom/android/browser/GearsSettingsDialog;Landroid/app/Activity;Ljava/util/List;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/GearsSettingsDialog;->mListAdapter:Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mListAdapter:Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    const/high16 v16, 0x300

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mListAdapter:Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    .end local v9           #list:Landroid/widget/ListView;
    :cond_1b0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/GearsSettingsDialog;->mDebug:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1bb

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/GearsSettingsDialog;->printPermissions()V

    .line 167
    :cond_1bb
    return-void
.end method

.method public setupDialog()V
    .registers 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/browser/GearsSettingsDialog;->setMainTitle()V

    .line 176
    return-void
.end method
