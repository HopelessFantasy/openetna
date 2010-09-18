.class public interface abstract Lcom/lge/homecube/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/DragController$DragListener;
    }
.end annotation


# static fields
.field public static final DRAG_ACTION_COPY:I = 0x1

.field public static final DRAG_ACTION_MOVE:I


# virtual methods
.method public abstract removeDragListener(Lcom/lge/homecube/DragController$DragListener;)V
.end method

.method public abstract setDragListener(Lcom/lge/homecube/DragController$DragListener;)V
.end method

.method public abstract startDrag(Landroid/view/View;Lcom/lge/homecube/DragSource;Ljava/lang/Object;I)V
.end method
