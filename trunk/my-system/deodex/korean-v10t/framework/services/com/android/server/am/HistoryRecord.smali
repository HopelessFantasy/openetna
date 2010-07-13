.class Lcom/android/server/am/HistoryRecord;
.super Landroid/view/IApplicationToken$Stub;
.source "HistoryRecord.java"


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final baseDir:Ljava/lang/String;

.field final componentSpecified:Z

.field configChangeFlags:I

.field configDestroy:Z

.field configuration:Landroid/content/res/Configuration;

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field final dataDir:Ljava/lang/String;

.field delayedResume:Z

.field description:Ljava/lang/CharSequence;

.field finishing:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field final fullscreen:Z

.field hasBeenLaunched:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field icon:I

.field idle:Z

.field inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field final isHomeActivity:Z

.field keysPaused:Z

.field labelRes:I

.field launchFailed:Z

.field launchMode:I

.field final launchedFromUid:I

.field newIntents:Ljava/util/ArrayList;

.field nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field persistent:Z

.field final processName:Ljava/lang/String;

.field readUriPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field final realActivity:Landroid/content/ComponentName;

.field final requestCode:I

.field final resDir:Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/HistoryRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field startTime:J

.field state:Lcom/android/server/am/ActivityManagerService$ActivityState;

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field theme:I

.field thumbnail:Landroid/graphics/Bitmap;

.field thumbnailNeeded:Z

.field visible:Z

.field waitingVisible:Z

.field writeUriPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/HistoryRecord;Ljava/lang/String;IZ)V
    .registers 20
    .parameter "_service"
    .parameter "_caller"
    .parameter "_launchedFromUid"
    .parameter "_intent"
    .parameter "_resolvedType"
    .parameter "aInfo"
    .parameter "_configuration"
    .parameter "_resultTo"
    .parameter "_resultWho"
    .parameter "_reqCode"
    .parameter "_componentSpecified"

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 182
    iput-object p6, p0, Lcom/android/server/am/HistoryRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 183
    iput p3, p0, Lcom/android/server/am/HistoryRecord;->launchedFromUid:I

    .line 184
    iput-object p4, p0, Lcom/android/server/am/HistoryRecord;->intent:Landroid/content/Intent;

    .line 185
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->shortComponentName:Ljava/lang/String;

    .line 186
    iput-object p5, p0, Lcom/android/server/am/HistoryRecord;->resolvedType:Ljava/lang/String;

    .line 187
    move/from16 v0, p11

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/HistoryRecord;->componentSpecified:Z

    .line 188
    iput-object p7, p0, Lcom/android/server/am/HistoryRecord;->configuration:Landroid/content/res/Configuration;

    .line 189
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/am/HistoryRecord;->resultTo:Lcom/android/server/am/HistoryRecord;

    .line 190
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/am/HistoryRecord;->resultWho:Ljava/lang/String;

    .line 191
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Lcom/android/server/am/HistoryRecord;->requestCode:I

    .line 192
    sget-object v4, Lcom/android/server/am/ActivityManagerService$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityManagerService$ActivityState;

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->state:Lcom/android/server/am/ActivityManagerService$ActivityState;

    .line 193
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->frontOfTask:Z

    .line 194
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->launchFailed:Z

    .line 195
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->haveState:Z

    .line 196
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->stopped:Z

    .line 197
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->delayedResume:Z

    .line 198
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->finishing:Z

    .line 199
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->configDestroy:Z

    .line 200
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->keysPaused:Z

    .line 201
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->inHistory:Z

    .line 202
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->persistent:Z

    .line 203
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->visible:Z

    .line 204
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->waitingVisible:Z

    .line 205
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->nowVisible:Z

    .line 206
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->thumbnailNeeded:Z

    .line 207
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->idle:Z

    .line 208
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->hasBeenLaunched:Z

    .line 210
    if-eqz p6, :cond_196

    .line 211
    iget-object v4, p6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_70

    iget v4, p6, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v4, :cond_70

    iget v4, p6, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_171

    .line 214
    :cond_70
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->realActivity:Landroid/content/ComponentName;

    .line 219
    :goto_76
    iget-object v4, p6, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->taskAffinity:Ljava/lang/String;

    .line 220
    iget v4, p6, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_17e

    const/4 v4, 0x1

    :goto_81
    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->stateNotNeeded:Z

    .line 222
    iget-object v4, p6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->baseDir:Ljava/lang/String;

    .line 223
    iget-object v4, p6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->resDir:Ljava/lang/String;

    .line 224
    iget-object v4, p6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->dataDir:Ljava/lang/String;

    .line 225
    iget-object v4, p6, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 226
    iget v4, p6, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v4, p0, Lcom/android/server/am/HistoryRecord;->labelRes:I

    .line 227
    iget-object v4, p0, Lcom/android/server/am/HistoryRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_af

    iget v4, p0, Lcom/android/server/am/HistoryRecord;->labelRes:I

    if-nez v4, :cond_af

    .line 228
    iget-object v2, p6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 229
    .local v2, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 230
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v4, p0, Lcom/android/server/am/HistoryRecord;->labelRes:I

    .line 232
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    :cond_af
    invoke-virtual {p6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/HistoryRecord;->icon:I

    .line 233
    invoke-virtual {p6}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/HistoryRecord;->theme:I

    .line 234
    iget v4, p6, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_181

    if-eqz p2, :cond_181

    iget-object v4, p6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_d5

    iget-object v4, p6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_181

    .line 238
    :cond_d5
    iget-object v4, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->processName:Ljava/lang/String;

    .line 243
    :goto_d9
    iget-object v4, p0, Lcom/android/server/am/HistoryRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_ea

    iget v4, p6, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_ea

    .line 244
    iget-object v4, p0, Lcom/android/server/am/HistoryRecord;->intent:Landroid/content/Intent;

    const/high16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    :cond_ea
    iget-object v4, p6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->packageName:Ljava/lang/String;

    .line 248
    iget v4, p6, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v4, p0, Lcom/android/server/am/HistoryRecord;->launchMode:I

    .line 250
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/HistoryRecord;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/HistoryRecord;->theme:I

    if-eqz v6, :cond_187

    iget v6, p0, Lcom/android/server/am/HistoryRecord;->theme:I

    :goto_100
    sget-object v7, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v3

    .line 253
    .local v3, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v3, :cond_18c

    iget-object v4, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_18c

    iget-object v4, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_18c

    const/4 v4, 0x1

    :goto_11d
    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->fullscreen:Z

    .line 258
    if-eqz p11, :cond_129

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq p3, v4, :cond_129

    if-nez p3, :cond_192

    .line 262
    :cond_129
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18e

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {p4, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18e

    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18e

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_18e

    invoke-virtual {p4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18e

    iget-object v4, p0, Lcom/android/server/am/HistoryRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    and-int/2addr v4, v5

    if-eqz v4, :cond_18e

    const-string v4, "android"

    iget-object v5, p0, Lcom/android/server/am/HistoryRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18e

    .line 274
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->isHomeActivity:Z

    .line 293
    .end local v3           #ent:Lcom/android/server/AttributeCache$Entry;
    :goto_170
    return-void

    .line 216
    :cond_171
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->realActivity:Landroid/content/ComponentName;

    goto/16 :goto_76

    .line 220
    :cond_17e
    const/4 v4, 0x0

    goto/16 :goto_81

    .line 240
    :cond_181
    iget-object v4, p6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->processName:Ljava/lang/String;

    goto/16 :goto_d9

    .line 250
    :cond_187
    const v6, 0x1030005

    goto/16 :goto_100

    .line 253
    .restart local v3       #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_18c
    const/4 v4, 0x0

    goto :goto_11d

    .line 276
    :cond_18e
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->isHomeActivity:Z

    goto :goto_170

    .line 279
    :cond_192
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->isHomeActivity:Z

    goto :goto_170

    .line 282
    .end local v3           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_196
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->realActivity:Landroid/content/ComponentName;

    .line 283
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->taskAffinity:Ljava/lang/String;

    .line 284
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->stateNotNeeded:Z

    .line 285
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->baseDir:Ljava/lang/String;

    .line 286
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->resDir:Ljava/lang/String;

    .line 287
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->dataDir:Ljava/lang/String;

    .line 288
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->processName:Ljava/lang/String;

    .line 289
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/HistoryRecord;->packageName:Ljava/lang/String;

    .line 290
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->fullscreen:Z

    .line 291
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HistoryRecord;->isHomeActivity:Z

    goto :goto_170
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/am/HistoryRecord;
    .registers 3

    .prologue
    .line 442
    move-object v0, p0

    .line 443
    .local v0, r:Lcom/android/server/am/HistoryRecord;
    iget-boolean v1, v0, Lcom/android/server/am/HistoryRecord;->waitingVisible:Z

    if-eqz v1, :cond_12

    .line 445
    iget-object v1, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mResumedActivity:Lcom/android/server/am/HistoryRecord;

    .line 446
    if-nez v0, :cond_f

    .line 447
    iget-object v1, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mPausingActivity:Lcom/android/server/am/HistoryRecord;

    .line 450
    :cond_f
    if-nez v0, :cond_12

    .line 451
    move-object v0, p0

    .line 455
    :cond_12
    return-object v0
.end method


# virtual methods
.method addNewIntentLocked(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/HistoryRecord;->newIntents:Ljava/util/ArrayList;

    .line 328
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method addResultLocked(Lcom/android/server/am/HistoryRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 12
    .parameter "from"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 298
    new-instance v0, Lcom/android/server/am/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/HistoryRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 300
    .local v0, r:Lcom/android/server/am/ActivityResult;
    iget-object v1, p0, Lcom/android/server/am/HistoryRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HistoryRecord;->results:Ljava/util/ArrayList;

    .line 303
    :cond_15
    iget-object v1, p0, Lcom/android/server/am/HistoryRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    const-string v0, " processName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "launchedFromUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/HistoryRecord;->launchedFromUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 111
    const-string v0, " app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "frontOfTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->frontOfTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 114
    const-string v0, " task="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "taskAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "base="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->resDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/HistoryRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    const-string v0, " res="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_87
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->resDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    const-string v0, " data="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "labelRes=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lcom/android/server/am/HistoryRecord;->labelRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    const-string v0, " icon=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/HistoryRecord;->icon:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    const-string v0, " theme=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/HistoryRecord;->theme:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "stateNotNeeded="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 126
    const-string v0, " componentSpecified="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->componentSpecified:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 127
    const-string v0, " isHomeActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->isHomeActivity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "configuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->resultTo:Lcom/android/server/am/HistoryRecord;

    if-nez v0, :cond_f9

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_11a

    .line 130
    :cond_f9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "resultTo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->resultTo:Lcom/android/server/am/HistoryRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 131
    const-string v0, " resultWho="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    const-string v0, " resultCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/HistoryRecord;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 134
    :cond_11a
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_12b

    .line 135
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "results="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 137
    :cond_12b
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v0, :cond_13c

    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "pendingResults="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 140
    :cond_13c
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v0, :cond_14d

    .line 141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 143
    :cond_14d
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v0, :cond_15e

    .line 144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "writeUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 146
    :cond_15e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "launchFailed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->launchFailed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 147
    const-string v0, " haveState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->haveState:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 148
    const-string v0, " icicle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "state="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->state:Lcom/android/server/am/ActivityManagerService$ActivityState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 150
    const-string v0, " stopped="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->stopped:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 151
    const-string v0, " delayedResume="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->delayedResume:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 152
    const-string v0, " finishing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->finishing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "keysPaused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->keysPaused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 154
    const-string v0, " inHistory="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->inHistory:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 155
    const-string v0, " persistent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->persistent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 156
    const-string v0, " launchMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/HistoryRecord;->launchMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->fullscreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 158
    const-string v0, " visible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->visible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 159
    const-string v0, " frozenBeforeDestroy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 160
    const-string v0, " thumbnailNeeded="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->thumbnailNeeded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 161
    const-string v0, " idle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->idle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 162
    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->waitingVisible:Z

    if-nez v0, :cond_212

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->nowVisible:Z

    if-eqz v0, :cond_229

    .line 163
    :cond_212
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "waitingVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->waitingVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 164
    const-string v0, " nowVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->nowVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 166
    :cond_229
    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->configDestroy:Z

    if-nez v0, :cond_231

    iget v0, p0, Lcom/android/server/am/HistoryRecord;->configChangeFlags:I

    if-eqz v0, :cond_24c

    .line 167
    :cond_231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "configDestroy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->configDestroy:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 168
    const-string v0, " configChangeFlags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/android/server/am/HistoryRecord;->configChangeFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    :cond_24c
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->connections:Ljava/util/HashSet;

    if-eqz v0, :cond_25d

    .line 172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "connections="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 174
    :cond_25d
    return-void
.end method

.method public getKeyDispatchingTimeout()J
    .registers 5

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 490
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/am/HistoryRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/HistoryRecord;

    move-result-object v0

    .line 491
    .local v0, r:Lcom/android/server/am/HistoryRecord;
    if-eqz v0, :cond_13

    iget-object v2, v0, Lcom/android/server/am/HistoryRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/android/server/am/HistoryRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v2, :cond_18

    .line 493
    :cond_13
    const-wide/16 v2, 0x2710

    monitor-exit v1

    move-wide v1, v2

    .line 496
    :goto_17
    return-wide v1

    :cond_18
    const-wide/32 v2, 0xea60

    monitor-exit v1

    move-wide v1, v2

    goto :goto_17

    .line 497
    .end local v0           #r:Lcom/android/server/am/HistoryRecord;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public isInterestingToUserLocked()Z
    .registers 3

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->visible:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->nowVisible:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->state:Lcom/android/server/am/ActivityManagerService$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityManagerService$ActivityState;->PAUSING:Lcom/android/server/am/ActivityManagerService$ActivityState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->state:Lcom/android/server/am/ActivityManagerService$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityManagerService$ActivityState;->RESUMED:Lcom/android/server/am/ActivityManagerService$ActivityState;

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public keyDispatchingTimedOut()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const-string v2, "keyDispatchingTimedOut"

    .line 459
    iget-object v2, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 460
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/am/HistoryRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/HistoryRecord;

    move-result-object v1

    .line 461
    .local v1, r:Lcom/android/server/am/HistoryRecord;
    if-eqz v1, :cond_36

    iget-object v3, v1, Lcom/android/server/am/HistoryRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_36

    .line 462
    iget-object v3, v1, Lcom/android/server/am/HistoryRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-eqz v3, :cond_19

    .line 463
    monitor-exit v2

    move v2, v5

    .line 483
    :goto_18
    return v2

    .line 466
    :cond_19
    iget-object v3, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v3, :cond_27

    .line 468
    iget-object v3, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 469
    monitor-exit v2

    move v2, v5

    goto :goto_18

    .line 472
    :cond_27
    iget-object v3, v1, Lcom/android/server/am/HistoryRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v3, :cond_3a

    .line 473
    iget-object v3, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/HistoryRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v5, "keyDispatchingTimedOut"

    invoke-virtual {v3, v4, v1, p0, v5}, Lcom/android/server/am/ActivityManagerService;->appNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HistoryRecord;Lcom/android/server/am/HistoryRecord;Ljava/lang/String;)V

    .line 483
    :cond_36
    :goto_36
    const/4 v3, 0x1

    monitor-exit v2

    move v2, v3

    goto :goto_18

    .line 476
    :cond_3a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 477
    .local v0, info:Landroid/os/Bundle;
    const-string v3, "shortMsg"

    const-string v4, "keyDispatchingTimedOut"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v3, "longMsg"

    const-string v4, "Timed out while dispatching key event"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v3, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/HistoryRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/am/ActivityManagerService;->finishInstrumentationLocked(Lcom/android/server/am/ProcessRecord;ILandroid/os/Bundle;)V

    goto :goto_36

    .line 484
    .end local v0           #info:Landroid/os/Bundle;
    .end local v1           #r:Lcom/android/server/am/HistoryRecord;
    :catchall_56
    move-exception v3

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_6 .. :try_end_58} :catchall_56

    throw v3
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .parameter "app"

    .prologue
    .line 352
    if-eqz p1, :cond_a

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method pauseKeyDispatchingLocked()V
    .registers 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->keysPaused:Z

    if-nez v0, :cond_e

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->keysPaused:Z

    .line 334
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/WindowManagerService;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 336
    :cond_e
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/HistoryRecord;Ljava/lang/String;I)V
    .registers 8
    .parameter "from"
    .parameter "resultWho"
    .parameter "requestCode"

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/server/am/HistoryRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_37

    .line 309
    iget-object v2, p0, Lcom/android/server/am/HistoryRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_d
    if-ltz v0, :cond_37

    .line 310
    iget-object v2, p0, Lcom/android/server/am/HistoryRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    .line 311
    .local v1, r:Lcom/android/server/am/ActivityResult;
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/HistoryRecord;

    if-eq v2, p1, :cond_1e

    .line 309
    :cond_1b
    :goto_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 312
    :cond_1e
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_2e

    .line 313
    if-nez p2, :cond_1b

    .line 317
    :cond_24
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-ne v2, p3, :cond_1b

    .line 319
    iget-object v2, p0, Lcom/android/server/am/HistoryRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1b

    .line 315
    :cond_2e
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_1b

    .line 322
    .end local v0           #i:I
    .end local v1           #r:Lcom/android/server/am/ActivityResult;
    :cond_37
    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .registers 2

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->keysPaused:Z

    if-eqz v0, :cond_e

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->keysPaused:Z

    .line 341
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/WindowManagerService;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 343
    :cond_e
    return-void
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4
    .parameter "app"
    .parameter "configChanges"

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/am/HistoryRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 357
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p2}, Lcom/android/server/WindowManagerService;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 359
    :cond_d
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .registers 3
    .parameter "force"

    .prologue
    .line 362
    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_10

    .line 363
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->frozenBeforeDestroy:Z

    .line 364
    iget-object v0, p0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/WindowManagerService;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 366
    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/server/am/HistoryRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 512
    iget-object v1, p0, Lcom/android/server/am/HistoryRecord;->stringName:Ljava/lang/String;

    .line 520
    :goto_6
    return-object v1

    .line 514
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 515
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "HistoryRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    iget-object v1, p0, Lcom/android/server/am/HistoryRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/HistoryRecord;->stringName:Ljava/lang/String;

    goto :goto_6
.end method

.method public windowsGone()V
    .registers 2

    .prologue
    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/HistoryRecord;->nowVisible:Z

    .line 436
    return-void
.end method

.method public windowsVisible()V
    .registers 20

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v14, v0

    monitor-enter v14

    .line 370
    :try_start_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/HistoryRecord;->startTime:J

    move-wide v15, v0

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_c9

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 372
    .local v4, curTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/HistoryRecord;->startTime:J

    move-wide v15, v0

    sub-long v10, v4, v15

    .line 373
    .local v10, thisTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    iget-wide v15, v15, Lcom/android/server/am/ActivityManagerService;->mInitialStartTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    iget-wide v15, v15, Lcom/android/server/am/ActivityManagerService;->mInitialStartTime:J

    sub-long v15, v4, v15

    move-wide v12, v15

    .line 376
    .local v12, totalTime:J
    :goto_33
    const/16 v15, 0x7539

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    iget-object v9, v15, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 380
    .local v9, sb:Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 381
    const-string v15, "Displayed activity "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->shortComponentName:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v15, ": "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 385
    const-string v15, " ms (total "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 387
    const-string v15, " ms)"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v15, "ActivityManager"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-wide/16 v15, 0x0

    cmp-long v15, v12, v15

    if-lez v15, :cond_b6

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Lcom/android/server/am/UsageStatsService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    move-wide v0, v12

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/am/UsageStatsService;->noteLaunchTime(Landroid/content/ComponentName;I)V

    .line 393
    :cond_b6
    const-wide/16 v15, 0x0

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/HistoryRecord;->startTime:J

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/server/am/ActivityManagerService;->mInitialStartTime:J

    .line 398
    .end local v4           #curTime:J
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #thisTime:J
    .end local v12           #totalTime:J
    :cond_c9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/HistoryRecord;->nowVisible:Z

    move v15, v0

    if-nez v15, :cond_ef

    .line 399
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/HistoryRecord;->nowVisible:Z

    .line 400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/HistoryRecord;->idle:Z

    move v15, v0

    if-nez v15, :cond_f4

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    .line 427
    :cond_e7
    :goto_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 429
    :cond_ef
    monitor-exit v14

    .line 430
    return-void

    .restart local v4       #curTime:J
    .restart local v10       #thisTime:J
    :cond_f1
    move-wide v12, v10

    .line 373
    goto/16 :goto_33

    .line 411
    .end local v4           #curTime:J
    .end local v10           #thisTime:J
    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 412
    .local v3, N:I
    if-lez v3, :cond_e7

    .line 413
    const/4 v6, 0x0

    .local v6, i:I
    :goto_102
    if-ge v6, v3, :cond_117

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/HistoryRecord;

    .line 416
    .local v8, r:Lcom/android/server/am/HistoryRecord;
    const/4 v15, 0x0

    iput-boolean v15, v8, Lcom/android/server/am/HistoryRecord;->waitingVisible:Z

    .line 413
    add-int/lit8 v6, v6, 0x1

    goto :goto_102

    .line 421
    .end local v8           #r:Lcom/android/server/am/HistoryRecord;
    :cond_117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 422
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 423
    .local v7, msg:Landroid/os/Message;
    const/16 v15, 0xb

    iput v15, v7, Landroid/os/Message;->what:I

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HistoryRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e7

    .line 429
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v7           #msg:Landroid/os/Message;
    :catchall_134
    move-exception v15

    monitor-exit v14
    :try_end_136
    .catchall {:try_start_6 .. :try_end_136} :catchall_134

    throw v15
.end method
