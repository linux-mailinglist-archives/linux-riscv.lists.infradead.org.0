Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EF3137AF7
	for <lists+linux-riscv@lfdr.de>; Sat, 11 Jan 2020 02:47:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JpGgv9YXpOY23vNaDGLnGu2ZYwtNlfr2fI6wCXLF6hg=; b=ostcqFmcGLzTWvIGO+bNum0sq
	OR5Cry/muKiTIicdFjSpHKbLEYznF9DP0Z/kyw2vdLavxd1y/0C1aHxoxLcXacnDxz2R6QPrmGjJi
	3VB8PNKIKgDipwnnBzjE5hBVEK8fmwGQK/GMDRjGLXUcIXI+qjn01eV7aS5JlSA1OPSQ+3YhfMLz1
	41uNbrWwNdVUpclT8YX6bXY+l4SK8PB/8uX8LGtI3t8omaG+H5BDJI5iL/Ho0HioPw2wC4xzEnNJr
	mnPPR8D/U/ZTY7NzaVJq8F7PhBxVPufTKoep6+v33Gu2xx2oqmcy9tgfl60KBYjzVWsVmNYYPW4Jv
	s58/FAtig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq5sF-0001ZL-Si; Sat, 11 Jan 2020 01:47:35 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq5sC-0001Yh-Qy
 for linux-riscv@lists.infradead.org; Sat, 11 Jan 2020 01:47:34 +0000
Received: by mail-il1-x142.google.com with SMTP id s15so3335146iln.1
 for <linux-riscv@lists.infradead.org>; Fri, 10 Jan 2020 17:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=JpGgv9YXpOY23vNaDGLnGu2ZYwtNlfr2fI6wCXLF6hg=;
 b=eS8XOCrlzpPjxW1PSce3x/VyPZ0UI1WQ5mm74rB0ThP5HaiAR4TIY7OmEtTfDXRzAd
 QKu4ngof12qGPnk6of+WyvhO/HCk5pHoWifAnLMvUqYwZiikUuK3WcpWcC1ibRO70mTX
 Ujf0VSKSNldiCbUbFzBZdnWesiuw6hN9nwyu7Uiuq0KEb30VZqK9oazOqkK3E2Dvudh1
 b3eOGeONjxv/8VivJAbyFYSXmlamqsfjb7rJy36VdHFrBlr+zJq+jtveAuZVi5h57I8w
 ixULOXQVBmcmhHGNXLy1dAmrXI6zCeWa2W8CYAXA4MT0bNBgheiBMSeK6dHilHZTiCDc
 g1Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=JpGgv9YXpOY23vNaDGLnGu2ZYwtNlfr2fI6wCXLF6hg=;
 b=IGtcTTsFj9Pq2TuIBPUFW4VW0sIyn+P9vcd2T+kOxQhmM18svy4JQyIxA2O3s+NNQq
 ULvPOztBqBm5rGG1qCXYqemfjmZxd8ETfDbVyGlJMZDFm16E1FAYA76ZJwUOjGtI2aTI
 qbD74rLgrRX7bghOz+c1qJA6ESxLrFLz4Y27LiywfrwSema4FB+th+fJ0Ch2CnTikE7t
 kN8xtvJlc2otPQUiO5dw1EDr7c2Pmsf4fPViJAoKoVmqMfmlOzWKZpKfrmeMBoPl4Ilz
 /kZNKZFSfXqRP9q4pn7OJBtylnbWpsFCpcLAeGEgZqlKBlVVc7Pnz0Nl7+CwANF8Q5Mj
 xiHg==
X-Gm-Message-State: APjAAAXqthzAMV6GenGjJHi6oo8ZtzG7u8msXPNDbWVePJtSfPLG5/Lq
 PdDOB3M3OgW8UKhH9bx1vI8oVQ==
X-Google-Smtp-Source: APXvYqzvTbYxaqhyu6BnLTlw8zXYSIqbffrMcP/tgEXK6y4UgsYmv2TR2ti1KFqsTKd8zJEWPnxIhw==
X-Received: by 2002:a05:6e02:5c8:: with SMTP id
 l8mr5429771ils.287.1578707251939; 
 Fri, 10 Jan 2020 17:47:31 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id p12sm1237771ilk.66.2020.01.10.17.47.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 17:47:31 -0800 (PST)
Date: Fri, 10 Jan 2020 17:47:28 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.h to include/soc
In-Reply-To: <alpine.DEB.2.21.9999.2001101704440.32308@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.2001101746310.40553@viisi.sifive.com>
References: <1578463746-25279-1-git-send-email-yash.shah@sifive.com>
 <alpine.DEB.2.21.9999.2001101704440.32308@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_174733_062842_7976861D 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: aou@eecs.berkeley.edu, james.morse@arm.com, linux-kernel@vger.kernel.org,
 rrichter@marvell.com, tony.luck@intel.com, bp@alien8.de, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, mchehab@kernel.org,
 linux-edac@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020, Paul Walmsley wrote:

> On Tue, 7 Jan 2020, Yash Shah wrote:
> 
> > The commit 9209fb51896f ("riscv: move sifive_l2_cache.c to drivers/soc")
> > moves the sifive L2 cache driver to driver/soc. It did not move the
> > header file along with the driver. Therefore this patch moves the header
> > file to driver/soc
> > 
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> 
> Thanks, queued for v5.5-rc.

By the way, I fixed the include guard also.  The queued patch follows.


- Paul

From: Yash Shah <yash.shah@sifive.com>
Date: Tue, 7 Jan 2020 22:09:06 -0800
Subject: [PATCH] riscv: move sifive_l2_cache.h to include/soc

The commit 9209fb51896f ("riscv: move sifive_l2_cache.c to drivers/soc")
moves the sifive L2 cache driver to driver/soc. It did not move the
header file along with the driver. Therefore this patch moves the header
file to driver/soc

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
[paul.walmsley@sifive.com: updated to fix the include guard]
Fixes: 9209fb51896f ("riscv: move sifive_l2_cache.c to drivers/soc")
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 drivers/edac/sifive_edac.c                                  | 2 +-
 drivers/soc/sifive/sifive_l2_cache.c                        | 2 +-
 .../include/asm => include/soc/sifive}/sifive_l2_cache.h    | 6 +++---
 3 files changed, 5 insertions(+), 5 deletions(-)
 rename {arch/riscv/include/asm => include/soc/sifive}/sifive_l2_cache.h (72%)

diff --git a/drivers/edac/sifive_edac.c b/drivers/edac/sifive_edac.c
index 413cdb4a591d..c0cc72a3b2be 100644
--- a/drivers/edac/sifive_edac.c
+++ b/drivers/edac/sifive_edac.c
@@ -10,7 +10,7 @@
 #include <linux/edac.h>
 #include <linux/platform_device.h>
 #include "edac_module.h"
-#include <asm/sifive_l2_cache.h>
+#include <soc/sifive/sifive_l2_cache.h>
 
 #define DRVNAME "sifive_edac"
 
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index a9ffff3277c7..a5069394cd61 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -9,7 +9,7 @@
 #include <linux/interrupt.h>
 #include <linux/of_irq.h>
 #include <linux/of_address.h>
-#include <asm/sifive_l2_cache.h>
+#include <soc/sifive/sifive_l2_cache.h>
 
 #define SIFIVE_L2_DIRECCFIX_LOW 0x100
 #define SIFIVE_L2_DIRECCFIX_HIGH 0x104
diff --git a/arch/riscv/include/asm/sifive_l2_cache.h b/include/soc/sifive/sifive_l2_cache.h
similarity index 72%
rename from arch/riscv/include/asm/sifive_l2_cache.h
rename to include/soc/sifive/sifive_l2_cache.h
index 04f6748fc50b..92ade10ed67e 100644
--- a/arch/riscv/include/asm/sifive_l2_cache.h
+++ b/include/soc/sifive/sifive_l2_cache.h
@@ -4,8 +4,8 @@
  *
  */
 
-#ifndef _ASM_RISCV_SIFIVE_L2_CACHE_H
-#define _ASM_RISCV_SIFIVE_L2_CACHE_H
+#ifndef __SOC_SIFIVE_L2_CACHE_H
+#define __SOC_SIFIVE_L2_CACHE_H
 
 extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
 extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
@@ -13,4 +13,4 @@ extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
 #define SIFIVE_L2_ERR_TYPE_CE 0
 #define SIFIVE_L2_ERR_TYPE_UE 1
 
-#endif /* _ASM_RISCV_SIFIVE_L2_CACHE_H */
+#endif /* __SOC_SIFIVE_L2_CACHE_H */
-- 
2.25.0.rc2




