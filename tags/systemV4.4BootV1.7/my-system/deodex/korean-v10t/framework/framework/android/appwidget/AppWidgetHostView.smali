.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"


# static fields
.field static final CROSSFADE:Z = false

.field static final FADE_DURATION:I = 0x3e8

.field static final LOGD:Z = false

.field static final TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final VIEW_MODE_CONTENT:I = 0x1

.field static final VIEW_MODE_DEFAULT:I = 0x3

.field static final VIEW_MODE_ERROR:I = 0x2

.field static final VIEW_MODE_NOINIT:I

.field static final sInflaterFilter:Landroid/view/LayoutInflater$Filter;


# instance fields
.field mAppWidgetId:I

.field mContext:Landroid/content/Context;

.field mFadeStartTime:J

.field mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field mLayoutId:I

.field mOld:Landroid/graphics/Bitmap;

.field mOldPaint:Landroid/graphics/Paint;

.field mRemoteContext:Landroid/content/Context;

.field mView:Landroid/view/View;

.field mViewMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Landroid/appwidget/AppWidgetHostView$1;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$1;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 79
    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .parameter "context"
    .parameter "animationIn"
    .parameter "animationOut"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mFadeStartTime:J

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOldPaint:Landroid/graphics/Paint;

    .line 92
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method private getRemoteContext(Landroid/widget/RemoteViews;)Landroid/content/Context;
    .registers 7
    .parameter "views"

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, packageName:Ljava/lang/String;
    if-nez v1, :cond_9

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 237
    :goto_8
    return-object v2

    .line 234
    :cond_9
    :try_start_9
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_f} :catch_11

    move-result-object v2

    goto :goto_8

    .line 235
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 236
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppWidgetHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_8
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 275
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 117
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    move-object v0, v1

    .line 118
    .local v0, context:Landroid/content/Context;
    :goto_7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1

    .line 117
    .end local v0           #context:Landroid/content/Context;
    :cond_d
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    move-object v0, v1

    goto :goto_7
.end method

.method public getAppWidgetId()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .registers 9

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, defaultView:Landroid/view/View;
    const/4 v2, 0x0

    .line 303
    .local v2, exception:Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v5, :cond_38

    .line 304
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 306
    .local v4, theirContext:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 308
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 309
    sget-object v5, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v3, v5}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 310
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2e} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2e} :catch_44

    move-result-object v0

    .line 320
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #theirContext:Landroid/content/Context;
    :goto_2f
    if-eqz v2, :cond_31

    .line 324
    :cond_31
    if-nez v0, :cond_37

    .line 326
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 329
    :cond_37
    return-object v0

    .line 312
    :cond_38
    :try_start_38
    const-string v5, "AppWidgetHostView"

    const-string v6, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_3f} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_3f} :catch_44

    goto :goto_2f

    .line 314
    :catch_40
    move-exception v5

    move-object v1, v5

    .line 315
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v1

    .line 318
    goto :goto_2f

    .line 316
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_44
    move-exception v5

    move-object v1, v5

    .line 317
    .local v1, e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_2f
.end method

.method protected getErrorView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 336
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, tv:Landroid/widget/TextView;
    const v1, 0x10402f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 339
    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 340
    return-object v0
.end method

.method protected prepareView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 286
    .local v0, requested:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_e

    .line 287
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0           #requested:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 291
    .restart local v0       #requested:Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 3
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 99
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 100
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 101
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 10
    .parameter "remoteViews"

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, recycled:Z
    const/4 v0, 0x0

    .line 130
    .local v0, content:Landroid/view/View;
    const/4 v2, 0x0

    .line 151
    .local v2, exception:Ljava/lang/Exception;
    if-nez p1, :cond_3c

    .line 152
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-ne v5, v6, :cond_c

    .line 221
    :cond_b
    :goto_b
    return-void

    .line 156
    :cond_c
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    .line 157
    const/4 v5, -0x1

    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 158
    iput v6, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 192
    :goto_15
    if-nez v0, :cond_28

    .line 193
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-eq v5, v7, :cond_b

    .line 197
    const-string v5, "AppWidgetHostView"

    const-string v6, "updateAppWidget couldn\'t find any view, using error view"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 199
    iput v7, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 202
    :cond_28
    if-nez v4, :cond_30

    .line 203
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 204
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 207
    :cond_30
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v5, v0, :cond_b

    .line 208
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 209
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    goto :goto_b

    .line 162
    :cond_3c
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext(Landroid/widget/RemoteViews;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 163
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    .line 167
    .local v3, layoutId:I
    if-nez v0, :cond_56

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    if-ne v3, v5, :cond_56

    .line 169
    :try_start_4c
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p1, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_55} :catch_64

    .line 171
    const/4 v4, 0x1

    .line 179
    :cond_56
    :goto_56
    if-nez v0, :cond_5e

    .line 181
    :try_start_58
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_5d} :catch_68

    move-result-object v0

    .line 188
    :cond_5e
    :goto_5e
    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 189
    const/4 v5, 0x1

    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    goto :goto_15

    .line 173
    :catch_64
    move-exception v5

    move-object v1, v5

    .line 174
    .local v1, e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_56

    .line 183
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_68
    move-exception v5

    move-object v1, v5

    .line 184
    .restart local v1       #e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_5e
.end method
