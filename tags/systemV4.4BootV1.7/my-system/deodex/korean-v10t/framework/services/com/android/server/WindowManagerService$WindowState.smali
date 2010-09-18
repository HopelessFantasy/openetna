.class final Lcom/android/server/WindowManagerService$WindowState;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;
    }
.end annotation


# instance fields
.field mAlpha:F

.field mAnimLayer:I

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field mAppFreezing:Z

.field mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mChildWindows:Ljava/util/ArrayList;

.field final mClient:Landroid/view/IWindow;

.field mCommitDrawPending:Z

.field final mContainingFrame:Landroid/graphics/Rect;

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

.field mDestroying:Z

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mDrawPending:Z

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mExiting:Z

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mHScale:F

.field mHasDrawn:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveFrame:Z

.field final mIsImWindow:Z

.field mLastAlpha:F

.field final mLastContentInsets:Landroid/graphics/Rect;

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastHScale:F

.field mLastHidden:Z

.field mLastLayer:I

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastShownFrame:Landroid/graphics/Rect;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLocalAnimating:Z

.field mNextOutsideTouch:Lcom/android/server/WindowManagerService$WindowState;

.field mOrientationChanging:Z

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mReadyToShow:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field mReqXPos:I

.field mReqYPos:I

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

.field final mSession:Lcom/android/server/WindowManagerService$Session;

.field mShownAlpha:F

.field final mShownFrame:Landroid/graphics/Rect;

.field final mSubLayer:I

.field mSurface:Landroid/view/Surface;

.field mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToken:Lcom/android/server/WindowManagerService$WindowToken;

.field mTouchableInsets:I

.field final mTransformation:Landroid/view/animation/Transformation;

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Lcom/android/server/WindowManagerService$WindowToken;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    .registers 15
    .parameter
    .parameter "s"
    .parameter "c"
    .parameter "token"
    .parameter "attachedWindow"
    .parameter "a"
    .parameter "viewVisibility"

    .prologue
    .line 6294
    iput-object p1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6147
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    .line 6156
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 6157
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 6176
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    .line 6177
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    .line 6182
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 6183
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 6189
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 6190
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 6203
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 6209
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 6217
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    .line 6220
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    .line 6221
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    .line 6222
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    .line 6223
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    .line 6224
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 6227
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    .line 6228
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    .line 6230
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 6231
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 6232
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 6233
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 6235
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 6236
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    .line 6237
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    .line 6250
    new-instance v5, Landroid/view/animation/Transformation;

    invoke-direct {v5}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    .line 6295
    iput-object p2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    .line 6296
    iput-object p3, p0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    .line 6297
    iput-object p4, p0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 6298
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, p6}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 6299
    iput p7, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    .line 6300
    new-instance v2, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;-><init>(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$1;)V

    .line 6301
    .local v2, deathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;
    iget v5, p6, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    .line 6306
    :try_start_db
    invoke-interface {p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_db .. :try_end_e3} :catch_13e

    .line 6316
    iput-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    .line 6318
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_157

    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-gt v5, v6, :cond_157

    .line 6322
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, p5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    .line 6325
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v6, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    .line 6326
    iput-object p5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6327
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6328
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3eb

    if-eq v5, v6, :cond_153

    const/4 v5, 0x1

    :goto_121
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    .line 6330
    iget-object v5, p5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v5, v6, :cond_133

    iget-object v5, p5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_155

    :cond_133
    const/4 v5, 0x1

    :goto_134
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    .line 6345
    :goto_136
    move-object v1, p0

    .line 6346
    .local v1, appWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_137
    iget-object v5, v1, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v5, :cond_184

    .line 6347
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_137

    .line 6307
    .end local v1           #appWin:Lcom/android/server/WindowManagerService$WindowState;
    :catch_13e
    move-exception v5

    move-object v3, v5

    .line 6308
    .local v3, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    .line 6309
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6310
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    .line 6311
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    .line 6312
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    .line 6313
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    .line 6370
    .end local v3           #e:Landroid/os/RemoteException;
    :goto_152
    return-void

    .line 6328
    :cond_153
    const/4 v5, 0x0

    goto :goto_121

    .line 6330
    :cond_155
    const/4 v5, 0x0

    goto :goto_134

    .line 6335
    :cond_157
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v6, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    .line 6338
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    .line 6339
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6340
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    .line 6341
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v5, v6, :cond_17e

    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_182

    :cond_17e
    const/4 v5, 0x1

    :goto_17f
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    goto :goto_136

    :cond_182
    const/4 v5, 0x0

    goto :goto_17f

    .line 6349
    .restart local v1       #appWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_184
    iget-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 6350
    .local v0, appToken:Lcom/android/server/WindowManagerService$WindowToken;
    :goto_186
    iget-object v5, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-nez v5, :cond_198

    .line 6351
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 6352
    .local v4, parent:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v4, :cond_198

    if-ne v0, v4, :cond_1bd

    .line 6357
    .end local v4           #parent:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_198
    iput-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 6358
    iget-object v5, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 6360
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 6361
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    .line 6362
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    .line 6363
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    .line 6364
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    .line 6365
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mReqXPos:I

    .line 6366
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mReqYPos:I

    .line 6367
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    .line 6368
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 6369
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    goto :goto_152

    .line 6355
    .restart local v4       #parent:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_1bd
    move-object v0, v4

    .line 6356
    goto :goto_186
.end method


# virtual methods
.method attach()V
    .registers 2

    .prologue
    .line 6376
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$Session;->windowAddedLocked()V

    .line 6377
    return-void
.end method

.method public final canReceiveKeys()Z
    .registers 2

    .prologue
    .line 7183
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public clearAnimation()V
    .registers 2

    .prologue
    .line 6530
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_d

    .line 6531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    .line 6533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 6535
    :cond_d
    return-void
.end method

.method commitFinishDrawingLocked(J)V
    .registers 9
    .parameter "currentTime"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6682
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-nez v2, :cond_7

    .line 6692
    :cond_6
    :goto_6
    return-void

    .line 6685
    :cond_7
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 6686
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 6687
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_21

    move v1, v5

    .line 6688
    .local v1, starting:Z
    :goto_13
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 6689
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v0, :cond_1d

    iget-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_1d

    if-eqz v1, :cond_6

    .line 6690
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    goto :goto_6

    .end local v0           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v1           #starting:Z
    :cond_21
    move v1, v4

    .line 6687
    goto :goto_13
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 22
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 6380
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    .line 6382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object v6, v0

    .line 6383
    .local v6, container:Landroid/graphics/Rect;
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object v12, v0

    .line 6386
    .local v12, display:Landroid/graphics/Rect;
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_47

    .line 6389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 6390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_47

    .line 6391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 6395
    :cond_47
    iget v3, v6, Landroid/graphics/Rect;->right:I

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int v14, v3, v4

    .line 6396
    .local v14, pw:I
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int v13, v3, v4

    .line 6399
    .local v13, ph:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v4, v0

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_184

    .line 6400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v3, :cond_170

    move v4, v14

    .line 6401
    .local v4, w:I
    :goto_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v3, :cond_17a

    move v5, v13

    .line 6407
    .local v5, h:I
    :goto_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object v10, v0

    .line 6408
    .local v10, content:Landroid/graphics/Rect;
    move-object v0, v10

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object v15, v0

    .line 6411
    .local v15, visible:Landroid/graphics/Rect;
    move-object v0, v15

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v9, v0

    .line 6418
    .local v9, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v8, v0

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    int-to-float v11, v14

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v8, v0

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v11, v0

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    int-to-float v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    float-to-int v8, v8

    invoke-static/range {v3 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 6425
    .end local v12           #display:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move v0, v3

    move-object/from16 v1, p2

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 6429
    iget v3, v10, Landroid/graphics/Rect;->left:I

    iget v4, v9, Landroid/graphics/Rect;->left:I

    .end local v4           #w:I
    if-ge v3, v4, :cond_da

    iget v3, v9, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 6430
    :cond_da
    iget v3, v10, Landroid/graphics/Rect;->top:I

    iget v4, v9, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_e4

    iget v3, v9, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 6431
    :cond_e4
    iget v3, v10, Landroid/graphics/Rect;->right:I

    iget v4, v9, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_ee

    iget v3, v9, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 6432
    :cond_ee
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_f8

    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 6433
    :cond_f8
    iget v3, v15, Landroid/graphics/Rect;->left:I

    iget v4, v9, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_102

    iget v3, v9, Landroid/graphics/Rect;->left:I

    iput v3, v15, Landroid/graphics/Rect;->left:I

    .line 6434
    :cond_102
    iget v3, v15, Landroid/graphics/Rect;->top:I

    iget v4, v9, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_10c

    iget v3, v9, Landroid/graphics/Rect;->top:I

    iput v3, v15, Landroid/graphics/Rect;->top:I

    .line 6435
    :cond_10c
    iget v3, v15, Landroid/graphics/Rect;->right:I

    iget v4, v9, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_116

    iget v3, v9, Landroid/graphics/Rect;->right:I

    iput v3, v15, Landroid/graphics/Rect;->right:I

    .line 6436
    :cond_116
    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_120

    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    iput v3, v15, Landroid/graphics/Rect;->bottom:I

    .line 6438
    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v11, v0

    .line 6439
    .local v11, contentInsets:Landroid/graphics/Rect;
    iget v3, v10, Landroid/graphics/Rect;->left:I

    iget v4, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->left:I

    .line 6440
    iget v3, v10, Landroid/graphics/Rect;->top:I

    iget v4, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->top:I

    .line 6441
    iget v3, v9, Landroid/graphics/Rect;->right:I

    iget v4, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->right:I

    .line 6442
    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    .line 6444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 6445
    .local v16, visibleInsets:Landroid/graphics/Rect;
    iget v3, v15, Landroid/graphics/Rect;->left:I

    iget v4, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 6446
    iget v3, v15, Landroid/graphics/Rect;->top:I

    iget v4, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 6447
    iget v3, v9, Landroid/graphics/Rect;->right:I

    iget v4, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 6448
    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 6461
    return-void

    .line 6400
    .end local v5           #h:I
    .end local v9           #frame:Landroid/graphics/Rect;
    .end local v10           #content:Landroid/graphics/Rect;
    .end local v11           #contentInsets:Landroid/graphics/Rect;
    .end local v15           #visible:Landroid/graphics/Rect;
    .end local v16           #visibleInsets:Landroid/graphics/Rect;
    .restart local v12       #display:Landroid/graphics/Rect;
    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    move v4, v3

    goto/16 :goto_6d

    .line 6401
    .restart local v4       #w:I
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v3

    goto/16 :goto_77

    .line 6403
    .end local v4           #w:I
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v4, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a6

    move v4, v14

    .line 6404
    .restart local v4       #w:I
    :goto_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1ad

    move v5, v13

    .restart local v5       #h:I
    :goto_1a4
    goto/16 :goto_77

    .line 6403
    .end local v4           #w:I
    .end local v5           #h:I
    :cond_1a6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move v3, v0

    move v4, v3

    goto :goto_194

    .line 6404
    .restart local v4       #w:I
    :cond_1ad
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move v3, v0

    move v5, v3

    goto :goto_1a4
.end method

.method computeShownFrameLocked()V
    .registers 15

    .prologue
    const/4 v11, 0x0

    const/high16 v13, 0x3f80

    const/4 v12, 0x0

    .line 6911
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    .line 6912
    .local v4, selfTransformation:Z
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v10, :cond_d6

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    if-eqz v10, :cond_d6

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    move-object v1, v10

    .line 6915
    .local v1, attachedTransformation:Landroid/view/animation/Transformation;
    :goto_15
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v10, :cond_d9

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    if-eqz v10, :cond_d9

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    move-object v0, v10

    .line 6918
    .local v0, appTransformation:Landroid/view/animation/Transformation;
    :goto_24
    if-nez v4, :cond_2a

    if-nez v1, :cond_2a

    if-eqz v0, :cond_dc

    .line 6921
    :cond_2a
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    .line 6922
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v5, v10, Lcom/android/server/WindowManagerService;->mTmpFloats:[F

    .line 6923
    .local v5, tmpFloats:[F
    iget-object v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 6926
    .local v6, tmpMatrix:Landroid/graphics/Matrix;
    iget v10, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6927
    if-eqz v4, :cond_46

    .line 6928
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 6930
    :cond_46
    if-eqz v1, :cond_4f

    .line 6931
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 6933
    :cond_4f
    if-eqz v0, :cond_58

    .line 6934
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 6943
    :cond_58
    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6944
    const/4 v10, 0x0

    aget v10, v5, v10

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    .line 6945
    const/4 v10, 0x1

    aget v10, v5, v10

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    .line 6946
    const/4 v10, 0x3

    aget v10, v5, v10

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    .line 6947
    const/4 v10, 0x4

    aget v10, v5, v10

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    .line 6948
    const/4 v10, 0x2

    aget v10, v5, v10

    float-to-int v8, v10

    .line 6949
    .local v8, x:I
    const/4 v10, 0x5

    aget v10, v5, v10

    float-to-int v9, v10

    .line 6950
    .local v9, y:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 6951
    .local v7, w:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 6952
    .local v3, h:I
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    add-int v11, v8, v7

    add-int v12, v9, v3

    invoke-virtual {v10, v8, v9, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 6959
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 6960
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService;->mLimitedAlphaCompositing:Z

    if-eqz v10, :cond_b2

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v10}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v10

    if-eqz v10, :cond_b2

    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    iget v11, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    iget v12, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    iget v13, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/server/WindowManagerService$WindowState;->isIdentityMatrix(FFFF)Z

    move-result v10

    if-eqz v10, :cond_d5

    iget v10, v2, Landroid/graphics/Rect;->left:I

    if-ne v8, v10, :cond_d5

    iget v10, v2, Landroid/graphics/Rect;->top:I

    if-ne v9, v10, :cond_d5

    .line 6965
    :cond_b2
    if-eqz v4, :cond_bf

    .line 6966
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    iget-object v11, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v11

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 6968
    :cond_bf
    if-eqz v1, :cond_ca

    .line 6969
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v11

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 6971
    :cond_ca
    if-eqz v0, :cond_d5

    .line 6972
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v11

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 6991
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v3           #h:I
    .end local v5           #tmpFloats:[F
    .end local v6           #tmpMatrix:Landroid/graphics/Matrix;
    .end local v7           #w:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_d5
    :goto_d5
    return-void

    .end local v0           #appTransformation:Landroid/view/animation/Transformation;
    .end local v1           #attachedTransformation:Landroid/view/animation/Transformation;
    :cond_d6
    move-object v1, v11

    .line 6912
    goto/16 :goto_15

    .restart local v1       #attachedTransformation:Landroid/view/animation/Transformation;
    :cond_d9
    move-object v0, v11

    .line 6915
    goto/16 :goto_24

    .line 6985
    .restart local v0       #appTransformation:Landroid/view/animation/Transformation;
    :cond_dc
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6986
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 6987
    iput v13, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    .line 6988
    iput v12, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    .line 6989
    iput v12, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    .line 6990
    iput v13, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    goto :goto_d5
.end method

.method createSurfaceLocked()Landroid/view/Surface;
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v9, "WindowManager"

    .line 6538
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_87

    .line 6539
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    .line 6540
    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 6541
    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 6542
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_17

    .line 6543
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 6546
    :cond_17
    const/4 v7, 0x0

    .line 6547
    .local v7, flags:I
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    if-ne v0, v2, :cond_8a

    .line 6548
    or-int/lit8 v7, v7, 0x10

    .line 6555
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2a

    .line 6556
    or-int/lit16 v7, v7, 0x80

    .line 6565
    :cond_2a
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 6566
    .local v4, w:I
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 6567
    .local v5, h:I
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_42

    .line 6570
    iget v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    .line 6571
    iget v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    .line 6575
    :cond_42
    :try_start_42
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v2, v2, Lcom/android/server/WindowManagerService$Session;->mPid:I

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-direct/range {v0 .. v7}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_56
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_42 .. :try_end_56} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_56} :catch_b0

    .line 6599
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 6602
    :try_start_59
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(II)V

    .line 6603
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    .line 6604
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    .line 6605
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_81

    .line 6606
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setFlags(II)V
    :try_end_81
    .catchall {:try_start_59 .. :try_end_81} :catchall_dd
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_81} :catch_bb

    .line 6613
    :cond_81
    :goto_81
    const/4 v0, 0x1

    :try_start_82
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z
    :try_end_84
    .catchall {:try_start_82 .. :try_end_84} :catchall_dd

    .line 6616
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 6621
    .end local v4           #w:I
    .end local v5           #h:I
    .end local v7           #flags:I
    :cond_87
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    :goto_89
    return-object v0

    .line 6549
    .restart local v7       #flags:I
    :cond_8a
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_94

    .line 6550
    or-int/lit8 v7, v7, 0x28

    goto :goto_20

    .line 6551
    :cond_94
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 6552
    or-int/lit16 v7, v7, 0x200

    goto :goto_20

    .line 6578
    .restart local v4       #w:I
    .restart local v5       #h:I
    :catch_9e
    move-exception v0

    move-object v8, v0

    .line 6579
    .local v8, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v0, "WindowManager"

    const-string v0, "OutOfResourcesException creating surface"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6580
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const-string v1, "create"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    move-object v0, v10

    .line 6581
    goto :goto_89

    .line 6582
    .end local v8           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_b0
    move-exception v0

    move-object v8, v0

    .line 6583
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v0, "Exception creating surface"

    invoke-static {v9, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    .line 6584
    goto :goto_89

    .line 6609
    .end local v8           #e:Ljava/lang/Exception;
    :catch_bb
    move-exception v0

    move-object v8, v0

    .line 6610
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_bd
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating surface in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6611
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const-string v1, "create-init"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_bd .. :try_end_dc} :catchall_dd

    goto :goto_81

    .line 6615
    .end local v8           #e:Ljava/lang/RuntimeException;
    :catchall_dd
    move-exception v0

    .line 6616
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 6615
    throw v0
.end method

.method destroySurfaceLocked()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6628
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 6630
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6631
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6633
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne p0, v3, :cond_2d

    .line 6634
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-boolean v6, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 6640
    :cond_2d
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_95

    .line 6648
    :try_start_31
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->clear()V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_36} :catch_54

    .line 6654
    :goto_36
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 6655
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    .line 6656
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 6657
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 6659
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6660
    .local v2, i:I
    :goto_45
    if-lez v2, :cond_95

    .line 6661
    add-int/lit8 v2, v2, -0x1

    .line 6662
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    .line 6663
    .local v0, c:Lcom/android/server/WindowManagerService$WindowState;
    iput-boolean v7, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    goto :goto_45

    .line 6649
    .end local v0           #c:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #i:I
    :catch_54
    move-exception v3

    move-object v1, v3

    .line 6650
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 6666
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_95
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const/high16 v2, 0x3f80

    const-string v3, " last="

    .line 7228
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7230
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSession="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7231
    const-string v1, " mClient="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7232
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAttrs="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7233
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v1, :cond_3b

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-eqz v1, :cond_52

    .line 7234
    :cond_3b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAttachedWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7235
    const-string v1, " mLayoutAttached="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7237
    :cond_52
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_63

    .line 7238
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mIsImWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7240
    :cond_63
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mBaseLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7241
    const-string v1, " mSubLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7242
    const-string v1, " mAnimLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7243
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_384

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    :goto_91
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7245
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7246
    const-string v1, " mLastLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7247
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_b9

    .line 7248
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSurface="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7250
    :cond_b9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7251
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRootToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7252
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_e4

    .line 7253
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAppToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7255
    :cond_e4
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_f5

    .line 7256
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTargetAppToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7258
    :cond_f5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mViewVisibility=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7259
    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7260
    const-string v1, " mLastHidden="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7261
    const-string v1, " mHaveFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7262
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_126

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v1, :cond_126

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-eqz v1, :cond_147

    .line 7263
    :cond_126
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mPolicyVisibility="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7264
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7265
    const-string v1, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7266
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7267
    const-string v1, " mAttachedHidden="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7269
    :cond_147
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Requested w="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7270
    const-string v1, " h="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7271
    const-string v1, " x="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mReqXPos:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7272
    const-string v1, " y="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mReqYPos:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mGivenContentInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7274
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7275
    const-string v1, " mGivenVisibleInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7276
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7277
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7278
    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    if-nez v1, :cond_194

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    if-eqz v1, :cond_1ab

    .line 7279
    :cond_194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTouchableInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7280
    const-string v1, " mGivenInsetsPending="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7282
    :cond_1ab
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mShownFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7283
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7284
    const-string v1, " last="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7285
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7286
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7287
    const-string v1, " last="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7288
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7289
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mContainingFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7290
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7291
    const-string v1, " mDisplayFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7292
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7293
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7294
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mContentFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7295
    const-string v1, " mVisibleFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7296
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7297
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mContentInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7298
    const-string v1, " last="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7299
    const-string v1, " mVisibleInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7300
    const-string v1, " last="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7301
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7302
    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_253

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_253

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_274

    .line 7303
    :cond_253
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mShownAlpha="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 7304
    const-string v1, " mAlpha="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 7305
    const-string v1, " mLastAlpha="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 7307
    :cond_274
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-nez v1, :cond_284

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-nez v1, :cond_284

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    if-nez v1, :cond_284

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2af

    .line 7309
    :cond_284
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAnimating="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7310
    const-string v1, " mLocalAnimating="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7311
    const-string v1, " mAnimationIsEntrance="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7312
    const-string v1, " mAnimation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7314
    :cond_2af
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    if-nez v1, :cond_2b7

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    if-eqz v1, :cond_2db

    .line 7315
    :cond_2b7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "XForm: has="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7316
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7317
    const-string v1, " hasLocal="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7318
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 7319
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7321
    :cond_2db
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDrawPending="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7322
    const-string v1, " mCommitDrawPending="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7323
    const-string v1, " mReadyToShow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7324
    const-string v1, " mHasDrawn="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7325
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v1, :cond_316

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    if-nez v1, :cond_316

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_316

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    if-eqz v1, :cond_341

    .line 7326
    :cond_316
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mExiting="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7327
    const-string v1, " mRemoveOnExit="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7328
    const-string v1, " mDestroying="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7329
    const-string v1, " mRemoved="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7331
    :cond_341
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v1, :cond_349

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    if-eqz v1, :cond_360

    .line 7332
    :cond_349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mOrientationChanging="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7333
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7334
    const-string v1, " mAppFreezing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7336
    :cond_360
    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_36c

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_383

    .line 7337
    :cond_36c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHScale="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 7338
    const-string v1, " mVScale="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 7340
    :cond_383
    return-void

    .line 7243
    :cond_384
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_38e

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    goto/16 :goto_91

    :cond_38e
    const/4 v1, 0x0

    goto/16 :goto_91
.end method

.method public fillsScreenLw(IIZZ)Z
    .registers 10
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "shownFrame"
    .parameter "onlyOpaque"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7099
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_8

    move v1, v3

    .line 7116
    :goto_7
    return v1

    .line 7102
    :cond_8
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    if-nez v1, :cond_14

    move v1, v3

    .line 7103
    goto :goto_7

    .line 7105
    :cond_14
    if-eqz p4, :cond_1f

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    move v1, v3

    .line 7106
    goto :goto_7

    .line 7108
    :cond_1f
    if-eqz p3, :cond_57

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v0, v1

    .line 7110
    .local v0, frame:Landroid/graphics/Rect;
    :goto_24
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_5d

    .line 7111
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_5b

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gt v1, v2, :cond_5b

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_5b

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v2, :cond_5b

    move v1, v4

    goto :goto_7

    .line 7108
    .end local v0           #frame:Landroid/graphics/Rect;
    :cond_57
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v0, v1

    goto :goto_24

    .restart local v0       #frame:Landroid/graphics/Rect;
    :cond_5b
    move v1, v3

    .line 7111
    goto :goto_7

    .line 7116
    :cond_5d
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_6f

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_6f

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_6f

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v1, p2, :cond_6f

    move v1, v4

    goto :goto_7

    :cond_6f
    move v1, v3

    goto :goto_7
.end method

.method finishDrawingLocked()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6669
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-eqz v0, :cond_c

    .line 6672
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 6673
    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v0, v2

    .line 6676
    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method finishExit()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6866
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6867
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v0, :cond_19

    .line 6868
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$WindowState;->finishExit()V

    .line 6867
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 6871
    :cond_19
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v3, :cond_1e

    .line 6900
    :cond_1d
    :goto_1d
    return-void

    .line 6875
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isWindowAnimating()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 6882
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_41

    .line 6883
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6884
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 6888
    :try_start_31
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_36} :catch_51

    .line 6892
    :goto_36
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 6893
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6895
    :cond_41
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 6896
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    if-eqz v3, :cond_1d

    .line 6897
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6898
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    goto :goto_1d

    .line 6889
    :catch_51
    move-exception v3

    move-object v1, v3

    .line 6890
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error hiding surface in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public getAppStartingWindow()Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2

    .prologue
    .line 6516
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .registers 2

    .prologue
    .line 6504
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 6496
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 6476
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 6472
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 6464
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 6488
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .registers 2

    .prologue
    .line 6484
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 6492
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getShownFrameLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 6468
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSurfaceLayer()I
    .registers 2

    .prologue
    .line 6500
    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    return v0
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 6480
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasAppShownWindows()Z
    .registers 2

    .prologue
    .line 6508
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasAppStartingIcon()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 6512
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    :cond_f
    move v0, v1

    goto :goto_c
.end method

.method public hasDrawnLw()Z
    .registers 2

    .prologue
    .line 7189
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    return v0
.end method

.method public hideLw(Z)Z
    .registers 6
    .parameter "doAnimation"

    .prologue
    const/4 v3, 0x0

    .line 7206
    if-eqz p1, :cond_22

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    move v0, v1

    .line 7208
    .local v0, current:Z
    :goto_6
    if-eqz v0, :cond_2b

    .line 7209
    if-eqz p1, :cond_15

    .line 7210
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x2

    invoke-static {v1, p0, v2, v3}, Lcom/android/server/WindowManagerService;->access$1700(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 7211
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_15

    .line 7212
    const/4 p1, 0x0

    .line 7215
    :cond_15
    if-eqz p1, :cond_26

    .line 7216
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 7221
    :goto_19
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    .line 7222
    const/4 v1, 0x1

    .line 7224
    :goto_21
    return v1

    .line 7206
    .end local v0           #current:Z
    :cond_22
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    move v0, v1

    goto :goto_6

    .line 7218
    .restart local v0       #current:Z
    :cond_26
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 7219
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    goto :goto_19

    :cond_2b
    move v1, v3

    .line 7224
    goto :goto_21
.end method

.method isAnimating()Z
    .registers 4

    .prologue
    .line 7070
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 7071
    .local v1, attached:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7072
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_18

    if-eqz v1, :cond_e

    iget-object v2, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_18

    :cond_e
    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_18

    iget-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    if-eqz v2, :cond_1a

    :cond_18
    const/4 v2, 0x1

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public isDisplayedLw()Z
    .registers 3

    .prologue
    .line 7089
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7090
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_20

    if-eqz v0, :cond_24

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_24

    :cond_20
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-eqz v1, :cond_26

    :cond_24
    const/4 v1, 0x1

    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method isFullscreen(II)Z
    .registers 4
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 7146
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lt v0, p1, :cond_1a

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, p2, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method isIdentityMatrix(FFFF)Z
    .registers 11
    .parameter "dsdx"
    .parameter "dtdx"
    .parameter "dsdy"
    .parameter "dtdy"

    .prologue
    const v5, 0x3f800054

    const v4, 0x3f7fff58

    const v3, 0x358637bd

    const v2, -0x4a79c843

    const/4 v1, 0x0

    .line 6903
    cmpg-float v0, p1, v4

    if-ltz v0, :cond_15

    cmpl-float v0, p1, v5

    if-lez v0, :cond_17

    :cond_15
    move v0, v1

    .line 6907
    :goto_16
    return v0

    .line 6904
    :cond_17
    cmpg-float v0, p4, v4

    if-ltz v0, :cond_1f

    cmpl-float v0, p4, v5

    if-lez v0, :cond_21

    :cond_1f
    move v0, v1

    goto :goto_16

    .line 6905
    :cond_21
    cmpg-float v0, p2, v2

    if-ltz v0, :cond_29

    cmpl-float v0, p2, v3

    if-lez v0, :cond_2b

    :cond_29
    move v0, v1

    goto :goto_16

    .line 6906
    :cond_2b
    cmpg-float v0, p3, v2

    if-ltz v0, :cond_33

    cmpl-float v0, p3, v3

    if-lez v0, :cond_35

    :cond_33
    move v0, v1

    goto :goto_16

    .line 6907
    :cond_35
    const/4 v0, 0x1

    goto :goto_16
.end method

.method isOnScreen()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7045
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7046
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v0, :cond_26

    .line 7047
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_22

    :cond_1a
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-nez v1, :cond_22

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-eqz v1, :cond_24

    :cond_22
    move v1, v3

    .line 7051
    :goto_23
    return v1

    :cond_24
    move v1, v2

    .line 7047
    goto :goto_23

    .line 7051
    :cond_26
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3c

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_3c

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_3c

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-eqz v1, :cond_3a

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-eqz v1, :cond_3c

    :cond_3a
    move v1, v3

    goto :goto_23

    :cond_3c
    move v1, v2

    goto :goto_23
.end method

.method isOpaqueDrawn()Z
    .registers 3

    .prologue
    .line 7126
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method isReadyForDisplay()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 7061
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7062
    .local v1, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v1, :cond_26

    iget-boolean v2, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    move v0, v2

    .line 7063
    .local v0, animating:Z
    :goto_8
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v2, :cond_28

    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v2, v2, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-eqz v2, :cond_24

    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-nez v2, :cond_24

    if-eqz v0, :cond_28

    :cond_24
    const/4 v2, 0x1

    :goto_25
    return v2

    .end local v0           #animating:Z
    :cond_26
    move v0, v3

    .line 7062
    goto :goto_8

    .restart local v0       #animating:Z
    :cond_28
    move v2, v3

    .line 7063
    goto :goto_25
.end method

.method public isVisibleLw()Z
    .registers 3

    .prologue
    .line 6999
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7000
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1e

    if-eqz v0, :cond_14

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1e

    :cond_14
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method isVisibleNow()Z
    .registers 2

    .prologue
    .line 7022
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method isVisibleOrAdding()Z
    .registers 3

    .prologue
    .line 7031
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7032
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_26

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-nez v1, :cond_26

    :cond_e
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_26

    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_26

    :cond_1c
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_26

    const/4 v1, 0x1

    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public isWinVisibleLw()Z
    .registers 3

    .prologue
    .line 7011
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7012
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_22

    if-eqz v0, :cond_18

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-eqz v1, :cond_22

    :cond_18
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v1, :cond_22

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_22

    const/4 v1, 0x1

    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method isWindowAnimating()Z
    .registers 2

    .prologue
    .line 7081
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method needsBackgroundFiller(II)Z
    .registers 5
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 7131
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_4c

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_4c

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_4c

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_4c

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4c

    const/4 v0, 0x1

    :goto_4b
    return v0

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method performShowLocked()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6703
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    if-eqz v2, :cond_79

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 6716
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v2

    if-nez v2, :cond_16

    move v2, v3

    .line 6750
    :goto_15
    return v2

    .line 6719
    :cond_16
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    .line 6720
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    .line 6721
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 6722
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 6723
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 6725
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    invoke-static {v2, p0}, Lcom/android/server/WindowManagerService;->access$1600(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 6727
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6728
    .local v1, i:I
    :cond_30
    :goto_30
    if-lez v1, :cond_4a

    .line 6729
    add-int/lit8 v1, v1, -0x1

    .line 6730
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    .line 6731
    .local v0, c:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v2, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_30

    iget-boolean v2, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-eqz v2, :cond_30

    .line 6732
    iput-boolean v3, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    .line 6733
    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    goto :goto_30

    .line 6737
    .end local v0           #c:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4a
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_79

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v2, :cond_79

    .line 6739
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-boolean v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    .line 6740
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_74

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v2, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v2, :cond_74

    .line 6744
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6745
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6747
    :cond_74
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .end local v1           #i:I
    :cond_79
    move v2, v4

    .line 6750
    goto :goto_15
.end method

.method removeLocked()V
    .registers 4

    .prologue
    .line 7151
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_b

    .line 7152
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7154
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    .line 7155
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$Session;->windowRemovedLocked()V

    .line 7157
    :try_start_13
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1f} :catch_20

    .line 7162
    :goto_1f
    return-void

    .line 7158
    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter "anim"

    .prologue
    const/4 v0, 0x0

    .line 6522
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6523
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    .line 6524
    iput-object p1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 6525
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 6526
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget v1, v1, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 6527
    return-void
.end method

.method public showLw(Z)Z
    .registers 6
    .parameter "doAnimation"

    .prologue
    const/4 v3, 0x1

    .line 7193
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    if-nez v0, :cond_1d

    .line 7194
    :cond_9
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 7195
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 7196
    if-eqz p1, :cond_14

    .line 7197
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    invoke-static {v0, p0, v3, v3}, Lcom/android/server/WindowManagerService;->access$1700(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 7199
    :cond_14
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    move v0, v3

    .line 7202
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method stepAnimationLocked(JII)Z
    .registers 12
    .parameter "currentTime"
    .parameter "dw"
    .parameter "dh"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6756
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_82

    .line 6759
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v1, :cond_4a

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_4a

    .line 6760
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    .line 6761
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    .line 6762
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-nez v1, :cond_37

    .line 6767
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 6768
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 6769
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    .line 6770
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6772
    :cond_37
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 6773
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 6778
    .local v0, more:Z
    if-eqz v0, :cond_48

    move v1, v4

    .line 6856
    .end local v0           #more:Z
    :goto_47
    return v1

    .line 6785
    .restart local v0       #more:Z
    :cond_48
    iput-object v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 6788
    .end local v0           #more:Z
    :cond_4a
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    .line 6789
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-eqz v1, :cond_54

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    if-eqz v1, :cond_69

    :cond_54
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    if-eqz v1, :cond_69

    .line 6798
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6799
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    .line 6800
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    move v1, v5

    .line 6801
    goto :goto_47

    .line 6802
    :cond_69
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    if-eqz v1, :cond_79

    .line 6805
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6817
    :cond_6f
    :goto_6f
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-nez v1, :cond_8d

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-nez v1, :cond_8d

    move v1, v5

    .line 6818
    goto :goto_47

    .line 6806
    :cond_79
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 6807
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    goto :goto_6f

    .line 6809
    :cond_82
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_6f

    .line 6812
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6813
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    .line 6814
    iput-object v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_6f

    .line 6826
    :cond_8d
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6827
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    .line 6828
    iput-object v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 6829
    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iput v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 6830
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_a4

    .line 6831
    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget v2, v2, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 6835
    :cond_a4
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    .line 6836
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    .line 6837
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 6838
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 6839
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    if-eqz v1, :cond_dd

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_dd

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_dd

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v1, :cond_dd

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v1, :cond_dd

    .line 6846
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6847
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6850
    :cond_dd
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->finishExit()V

    .line 6852
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_e9

    .line 6853
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_e9
    move v1, v5

    .line 6856
    goto/16 :goto_47
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 7344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
