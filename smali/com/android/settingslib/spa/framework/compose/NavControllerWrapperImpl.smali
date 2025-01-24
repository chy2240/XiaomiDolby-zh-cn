.class public final Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;
.super Ljava/lang/Object;
.source "NavControllerWrapper.kt"

# interfaces
.implements Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;


# instance fields
.field private final navController:Landroidx/navigation/NavHostController;

.field private final onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavHostController;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 1

    const-string v0, "navController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->navController:Landroidx/navigation/NavHostController;

    .line 66
    iput-object p2, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method


# virtual methods
.method public navigateBack()V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :cond_0
    return-void
.end method
