.class final Lcom/android/server/am/ActivityRecord;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityRecord$Token;
    }
.end annotation


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field final baseDir:Ljava/lang/String;

.field compat:Landroid/content/res/CompatibilityInfo;

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

.field finishing:Z

.field forceNewConfig:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field final fullscreen:Z

.field hasBeenLaunched:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field icon:I

.field idle:Z

.field immersive:Z

.field private inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field final isHomeActivity:Z

.field isTopOverlay:Z

.field keysPaused:Z

.field labelRes:I

.field lastVisibleTime:J

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field launchTime:J

.field final launchedFromUid:I

.field newIntents:Ljava/util/ArrayList;

.field final noDisplay:Z

.field nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pauseTime:J

.field pendingOptions:Landroid/app/ActivityOptions;

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

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field realTheme:I

.field final requestCode:I

.field final resDir:Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field sleeping:Z

.field final stack:Lcom/android/server/am/ActivityStack;

.field startTime:J

.field state:Lcom/android/server/am/ActivityStack$ActivityState;

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field theme:I

.field thumbHolder:Lcom/android/server/am/ThumbnailHolder;

.field thumbnailNeeded:Z

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field final userId:I

.field visible:Z

.field waitingVisible:Z

.field windowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)V
    .locals 7
    .parameter "_service"
    .parameter "_stack"
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
    .line 321
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->isTopOverlay:Z

    .line 322
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 323
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 324
    new-instance v3, Lcom/android/server/am/ActivityRecord$Token;

    invoke-direct {v3, p0}, Lcom/android/server/am/ActivityRecord$Token;-><init>(Lcom/android/server/am/ActivityRecord;)V

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 325
    iput-object p7, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 326
    iput p4, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 327
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserId;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 328
    iput-object p5, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 329
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 330
    iput-object p6, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 331
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    .line 332
    iput-object p8, p0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 333
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 334
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 335
    move/from16 v0, p11

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 336
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 337
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 338
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 339
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 340
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 341
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 342
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 343
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 344
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 345
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 346
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 347
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 348
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 349
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 350
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 351
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 353
    if-eqz p7, :cond_10

    .line 354
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v3, :cond_0

    iget v3, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 357
    :cond_0
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 362
    :goto_0
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 363
    iget v3, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 365
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    .line 366
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    .line 367
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    .line 368
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 369
    iget v3, p7, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 370
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    if-nez v3, :cond_1

    .line 371
    iget-object v1, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 372
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 373
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 375
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {p7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    .line 376
    invoke-virtual {p7}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    .line 377
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    .line 378
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    if-nez v3, :cond_2

    .line 379
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_9

    const v3, 0x1030005

    :goto_2
    iput v3, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    .line 384
    :cond_2
    iget v3, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    .line 385
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/high16 v4, 0x100

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    .line 387
    :cond_3
    iget v3, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    if-eqz p3, :cond_a

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_4

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_a

    .line 391
    :cond_4
    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 396
    :goto_3
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_5

    iget v3, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    .line 397
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    :cond_5
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 401
    iget v3, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    .line 403
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    sget-object v6, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 405
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_b

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_4
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 409
    if-eqz v2, :cond_c

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    .line 412
    if-eqz p12, :cond_6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq p4, v3, :cond_6

    if-nez p4, :cond_e

    .line 416
    :cond_6
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {p5, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    invoke-virtual {p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-virtual {p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 428
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    .line 436
    :goto_6
    iget v3, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    .line 451
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :goto_8
    return-void

    .line 359
    :cond_7
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 363
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 379
    :cond_9
    const v3, 0x103006b

    goto/16 :goto_2

    .line 393
    :cond_a
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    .line 405
    .restart local v2       #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 409
    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    .line 430
    :cond_d
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    goto :goto_6

    .line 433
    :cond_e
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    goto :goto_6

    .line 436
    :cond_f
    const/4 v3, 0x0

    goto :goto_7

    .line 438
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_10
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 439
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 440
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 441
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    .line 442
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    .line 443
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    .line 444
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 445
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 446
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 447
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    .line 448
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    .line 449
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    goto :goto_8
.end method

.method static forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .parameter "token"

    .prologue
    const/4 v3, 0x0

    .line 310
    if-eqz p0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/ActivityRecord$Token;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, v2

    .line 313
    :goto_1
    return-object v3

    :cond_0
    move-object v2, v3

    .line 310
    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad activity token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .locals 2

    .prologue
    .line 824
    move-object v0, p0

    .line 825
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v1, :cond_1

    .line 827
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 828
    if-nez v0, :cond_0

    .line 829
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 832
    :cond_0
    if-nez v0, :cond_1

    .line 833
    move-object v0, p0

    .line 837
    :cond_1
    return-object v0
.end method


# virtual methods
.method addNewIntentLocked(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    return-void
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .parameter "from"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 521
    new-instance v0, Lcom/android/server/am/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 523
    .local v0, r:Lcom/android/server/am/ActivityResult;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 524
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    return-void
.end method

.method applyOptionsLocked()V
    .locals 9

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v6

    .line 601
    .local v6, animationType:I
    packed-switch v6, :pswitch_data_0

    .line 638
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 640
    .end local v6           #animationType:I
    :cond_1
    return-void

    .line 603
    .restart local v6       #animationType:I
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    goto :goto_0

    .line 610
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionScaleUp(IIII)V

    .line 613
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartWidth()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 622
    :pswitch_2
    const/4 v0, 0x4

    if-ne v6, v0, :cond_2

    const/4 v5, 0x1

    .line 623
    .local v5, delayed:Z
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    .line 628
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 622
    .end local v5           #delayed:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method clearOptionsLocked()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 647
    :cond_0
    return-void
.end method

.method clearThumbnail()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iput-object v1, v0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    .line 685
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iput-object v1, v0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    .line 687
    :cond_0
    return-void
.end method

.method continueLaunchTickingLocked()Z
    .locals 6

    .prologue
    const/16 v5, 0x6b

    .line 700
    iget-wide v1, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 702
    .local v0, msg:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 703
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 705
    const/4 v1, 0x1

    .line 707
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;)V
    .locals 7
    .parameter "callingUid"
    .parameter "intent"

    .prologue
    .line 559
    const/4 v3, 0x0

    .line 565
    .local v3, sent:Z
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-ne v4, p0, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_1

    .line 569
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v0, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 571
    .end local p2
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v2, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 574
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v0, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 575
    const/4 v3, 0x1

    move-object p2, v2

    .line 584
    .end local v0           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v2           #intent:Landroid/content/Intent;
    .restart local p2
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 585
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Landroid/content/Intent;)V

    .line 587
    :cond_2
    return-void

    .line 576
    :catch_0
    move-exception v1

    .line 577
    .local v1, e:Landroid/os/RemoteException;
    :goto_1
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown sending new intent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 579
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 580
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_2
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown sending new intent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 579
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local p2
    .restart local v0       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    move-object p2, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_2

    .line 576
    .end local p2
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_3
    move-exception v1

    move-object p2, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 13
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 136
    .local v3, now:J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "packageName="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    const-string v7, " processName="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "launchedFromUid="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 139
    const-string v7, " userId="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 140
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "app="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "frontOfTask="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 143
    const-string v7, " task="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "taskAffinity="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "realActivity="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "baseDir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 149
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "resDir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "dataDir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "stateNotNeeded="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 153
    const-string v7, " componentSpecified="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 154
    const-string v7, " isHomeActivity="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "compat="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 156
    const-string v7, " labelRes=0x"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    const-string v7, " icon=0x"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    const-string v7, " theme=0x"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "config="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 160
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 161
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "resultTo="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 162
    const-string v7, " resultWho="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    const-string v7, " resultCode="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 165
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 166
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "results="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 168
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 169
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Pending Results:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 171
    .local v6, wpir:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/PendingIntentRecord;

    move-object v5, v7

    .line 172
    .local v5, pir:Lcom/android/server/am/PendingIntentRecord;
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    if-nez v5, :cond_5

    .line 174
    const-string v7, "null"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v5           #pir:Lcom/android/server/am/PendingIntentRecord;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 176
    .restart local v5       #pir:Lcom/android/server/am/PendingIntentRecord;
    :cond_5
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, p1, v7}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #pir:Lcom/android/server/am/PendingIntentRecord;
    .end local v6           #wpir:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_6
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 182
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Pending New Intents:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 184
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 185
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    if-nez v2, :cond_7

    .line 187
    const-string v7, "null"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 189
    :cond_7
    invoke-virtual {v2, v11, v12, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 193
    .end local v0           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v7, :cond_9

    .line 194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "pendingOptions="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 196
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v7, :cond_b

    .line 197
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v7, v7, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v7, :cond_a

    .line 198
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "readUriPermissions="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v7, v7, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 201
    :cond_a
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v7, v7, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v7, :cond_b

    .line 202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "writeUriPermissions="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v7, v7, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 206
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "launchFailed="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 207
    const-string v7, " haveState="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 208
    const-string v7, " icicle="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "state="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 210
    const-string v7, " stopped="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 211
    const-string v7, " delayedResume="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 212
    const-string v7, " finishing="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 213
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "keysPaused="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 214
    const-string v7, " inHistory="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 215
    const-string v7, " visible="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 216
    const-string v7, " sleeping="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 217
    const-string v7, " idle="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "fullscreen="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 219
    const-string v7, " noDisplay="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 220
    const-string v7, " immersive="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 221
    const-string v7, " launchMode="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "frozenBeforeDestroy="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 223
    const-string v7, " thumbnailNeeded="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 224
    const-string v7, " forceNewConfig="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "thumbHolder="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 226
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_c

    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_d

    .line 227
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "launchTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_13

    const-string v7, "0"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    :goto_4
    const-string v7, " startTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_14

    const-string v7, "0"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 235
    :cond_d
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_e

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v7, :cond_e

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v7, :cond_f

    .line 236
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "waitingVisible="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 237
    const-string v7, " nowVisible="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 238
    const-string v7, " lastVisibleTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_15

    const-string v7, "0"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    :goto_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 243
    :cond_f
    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-nez v7, :cond_10

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    if-eqz v7, :cond_11

    .line 244
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "configDestroy="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 245
    const-string v7, " configChangeFlags="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget v7, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    :cond_11
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v7, :cond_12

    .line 249
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "connections="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 251
    :cond_12
    return-void

    .line 229
    :cond_13
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    invoke-static {v7, v8, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_4

    .line 232
    :cond_14
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    invoke-static {v7, v8, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_5

    .line 240
    :cond_15
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    invoke-static {v7, v8, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_6
.end method

.method finishLaunchTickingLocked()V
    .locals 2

    .prologue
    .line 711
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    .line 712
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    return-void
.end method

.method public getKeyDispatchingTimeout()J
    .locals 4

    .prologue
    .line 878
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 879
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 880
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->usingWrapper:Z

    if-eqz v1, :cond_1

    .line 882
    :cond_0
    const-wide/32 v1, 0xea60

    monitor-exit v3

    .line 885
    :goto_0
    return-wide v1

    :cond_1
    const-wide/16 v1, 0x2710

    monitor-exit v3

    goto :goto_0

    .line 886
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method isInHistory()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    return v0
.end method

.method public isInterestingToUserLocked()Z
    .locals 2

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyDispatchingTimedOut()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, anrApp:Lcom/android/server/am/ProcessRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 844
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 845
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_2

    .line 846
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-eqz v5, :cond_0

    .line 847
    monitor-exit v4

    .line 873
    :goto_0
    return v3

    .line 850
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_1

    .line 852
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 853
    monitor-exit v4

    goto :goto_0

    .line 866
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 856
    .restart local v2       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    :try_start_1
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v3, :cond_4

    .line 857
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 866
    :cond_2
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    if-eqz v0, :cond_3

    .line 869
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "keyDispatchingTimedOut"

    invoke-virtual {v3, v0, v2, p0, v4}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 873
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 859
    :cond_4
    :try_start_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 860
    .local v1, info:Landroid/os/Bundle;
    const-string v3, "shortMsg"

    const-string v5, "keyDispatchingTimedOut"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v3, "longMsg"

    const-string v5, "Timed out while dispatching key event"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1}, Lcom/android/server/am/ActivityManagerService;->finishInstrumentationLocked(Lcom/android/server/am/ProcessRecord;ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method makeFinishing()V
    .locals 2

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 502
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 509
    :cond_1
    return-void
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 722
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pauseKeyDispatchingLocked()V
    .locals 2

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_0

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 659
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 661
    :cond_0
    return-void
.end method

.method putInHistory()V
    .locals 2

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-nez v0, :cond_0

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 479
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 483
    :cond_0
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 3
    .parameter "from"
    .parameter "resultWho"
    .parameter "requestCode"

    .prologue
    .line 531
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 532
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 533
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    .line 534
    .local v1, r:Lcom/android/server/am/ActivityResult;
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_1

    .line 532
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 535
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 536
    if-nez p2, :cond_0

    .line 540
    :cond_2
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-ne v2, p3, :cond_0

    .line 542
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 538
    :cond_3
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 545
    .end local v0           #i:I
    .end local v1           #r:Lcom/android/server/am/ActivityResult;
    :cond_4
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 654
    :cond_0
    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .locals 2

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_0

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 666
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 668
    :cond_0
    return-void
.end method

.method public setSleeping(Z)V
    .locals 4
    .parameter "_sleeping"

    .prologue
    .line 899
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    if-ne v1, p1, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 905
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 906
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when sleeping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V
    .locals 2
    .parameter "newTask"
    .parameter "newThumbHolder"
    .parameter "isRoot"

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 458
    :cond_0
    if-eqz p1, :cond_1

    .line 459
    iget v0, p1, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 462
    :cond_1
    if-nez p2, :cond_2

    .line 463
    move-object p2, p1

    .line 465
    :cond_2
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 466
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 468
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-nez v0, :cond_3

    .line 469
    new-instance v0, Lcom/android/server/am/ThumbnailHolder;

    invoke-direct {v0}, Lcom/android/server/am/ThumbnailHolder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 474
    :cond_3
    :goto_0
    return-void

    .line 472
    :cond_4
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    goto :goto_0
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .parameter "app"
    .parameter "configChanges"

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 729
    :cond_0
    return-void
.end method

.method startLaunchTickingLocked()V
    .locals 4

    .prologue
    .line 690
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    .line 695
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    goto :goto_0
.end method

.method public stopFreezingScreenLocked(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 732
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_1

    .line 733
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 734
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 736
    :cond_1
    return-void
.end method

.method takeFromHistory()V
    .locals 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_1

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 488
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 493
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 917
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    .line 926
    :goto_0
    return-object v1

    .line 920
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 921
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method

.method updateOptionsLocked(Landroid/os/Bundle;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 590
    if-eqz p1, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 594
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 596
    :cond_1
    return-void
.end method

.method updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "newThumbnail"
    .parameter "description"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eqz v0, :cond_2

    .line 675
    if-eqz p1, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iput-object p1, v0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iput-object p2, v0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    .line 680
    :cond_2
    return-void
.end method

.method public windowsDrawn()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 739
    iget-object v10, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 740
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_2

    .line 741
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 742
    .local v7, curTime:J
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    sub-long v3, v7, v0

    .line 743
    .local v3, thisTime:J
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-wide v0, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-wide v0, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    sub-long v5, v7, v0

    .line 746
    .local v5, totalTime:J
    :goto_0
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v2

    const/4 v2, 0x1

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v11, v1, v2

    const/4 v2, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v1, v2

    const/4 v2, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 749
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 750
    .local v9, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 751
    const-string v0, "Displayed "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const-string v0, ": "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-static {v3, v4, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 755
    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 756
    const-string v0, " (total "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-static {v5, v6, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 758
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_0
    const-string v0, "ActivityManager"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 763
    cmp-long v0, v5, v12

    if-lez v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Lcom/android/server/am/UsageStatsService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    long-to-int v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UsageStatsService;->noteLaunchTime(Landroid/content/ComponentName;I)V

    .line 766
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 767
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 769
    .end local v3           #thisTime:J
    .end local v5           #totalTime:J
    .end local v7           #curTime:J
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    .line 770
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 771
    monitor-exit v10

    .line 772
    return-void

    .restart local v3       #thisTime:J
    .restart local v7       #curTime:J
    :cond_3
    move-wide v5, v3

    .line 743
    goto/16 :goto_0

    .line 771
    .end local v3           #thisTime:J
    .end local v7           #curTime:J
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public windowsGone()V
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 818
    return-void
.end method

.method public windowsVisible()V
    .locals 8

    .prologue
    .line 775
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 776
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p0}, Lcom/android/server/am/ActivityStack;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 779
    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v4, :cond_1

    .line 780
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 781
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    .line 782
    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v4, :cond_2

    .line 786
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    .line 809
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 811
    :cond_1
    monitor-exit v5

    .line 812
    return-void

    .line 793
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 794
    .local v0, N:I
    if-lez v0, :cond_0

    .line 795
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 796
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 798
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 795
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 803
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 804
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 805
    .local v2, msg:Landroid/os/Message;
    const/16 v4, 0x67

    iput v4, v2, Landroid/os/Message;->what:I

    .line 806
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 811
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
