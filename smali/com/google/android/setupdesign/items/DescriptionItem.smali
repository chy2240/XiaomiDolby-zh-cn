.class public Lcom/google/android/setupdesign/items/DescriptionItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "DescriptionItem.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private partnerDescriptionHeavyStyle:Z

.field private partnerDescriptionLightStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->partnerDescriptionHeavyStyle:Z

    .line 39
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->partnerDescriptionLightStyle:Z

    return-void
.end method
