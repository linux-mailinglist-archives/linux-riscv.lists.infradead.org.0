Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC214163D79
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 08:28:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RE8yadqunBbRH3qS8QB++tHjtjwApk9t/HNNGZGt0k=; b=Kn0k+JYm6UGfab
	96zwvz5zosoGMePorEhMZsBtS0tx/YgLbHrbrrqdXAqsNvu/lts2K+rjVxhGGqDEEjaQ4nT5q12kI
	K3J5+dZOgHbrWKKfk++b+Yb6l9aEB6De2oLTvgss3H9U5bmLcGX+EQ/y18ysa1uITxgCLYrqZ6jdn
	FPzhZzK5cs66yIjRdhMB6WITY3KgIYBcfl4fbZa5eW/JuhdOJP4Mw8io9It5EFTxWbA/WLj5iUGiX
	xP2+HRQsM1HscUryJWYiTcruTUzjlIrHPDmRNBQF0mqgP5FrvL1ngEjOl/M9DyP9IUOLOl/GuFiXz
	ZeoMNqA1qZIC4h3AlZhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Jmv-0005O1-Qa; Wed, 19 Feb 2020 07:28:53 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jmp-0005K3-Ja
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 07:28:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id j17so2162488pjz.3
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 23:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7RE8yadqunBbRH3qS8QB++tHjtjwApk9t/HNNGZGt0k=;
 b=hRVJ/xGyrloptlAPvAR32rydKjzeXKJcG9PPOH8C3EGAsSmJ03rjrLXvlvMTFhW7rr
 fBXBhhkT9NQbLh4ejvI3dkLvP/Y0IJrf+Bcghe2PAJv65e3U5WGB9S78gjRCu9ZsciuY
 3kwnZPgs2nVaHzrc0E2mzVXCnhbas2BkuhMyf+SwSgxlMQMYT7Y7GclaF2nTOOvf7SZI
 NBBtTAgVyt6FXKRt01wR+cVNq2FG2/+gd3JSaO5dVPAwXOY3Ub3+bYlP7VlD54mJpdT0
 R216NXu/9BbvGu0s3c95lfv9k6UCikHTqNEzQbG8cih7WFivzEEZzuVVHJtgYmhlKGjG
 oRsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7RE8yadqunBbRH3qS8QB++tHjtjwApk9t/HNNGZGt0k=;
 b=DgHJYSH+MGvDmVXm2KmzdNLTawA1lnr7mDvOFU8pavTId4SY8ua8P4XDDDx7T4emVd
 pGs0sdOZ3RWMah1v+E2XV/DnTmia0/MvLLazKqo3BgmMwGos5a0Xa0u10XVTBX9631dz
 djy7yaEh3VcIMoSgWN6qJ9ifYtvm2fXxaQEaJ5/1SKCsP1SIlNQrwHrhj5qaHOp8LiUk
 YkolLAEkS6ptPB63TOeM3ROsq6VJ0lHlwh6M1/xFqvwYY3zEcZk81iY8YQmo2rRrWEGl
 0ahYO2362kURHMiQJUGV/oRP2jQfkTypBgjXNhjsId04HkdXp8fIuY+TKF0cCEJNxD86
 rN4g==
X-Gm-Message-State: APjAAAW1OwdgqJWVnSkoBAbqjkR+vBPuQz+74UD9maptq1bLDwgdSJyy
 qLVMRetF49n02q9gqD+hNKEmXJMC9f/JbQ==
X-Google-Smtp-Source: APXvYqzpvsON3Fj/73h0kzTbPUfHmS7shpX2yONmhg6vBNNd5ttRZCtyvYFBlaGa8V947i52c9BnlA==
X-Received: by 2002:a17:902:8eca:: with SMTP id
 x10mr23990054plo.94.1582097326738; 
 Tue, 18 Feb 2020 23:28:46 -0800 (PST)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id c188sm1500699pfb.151.2020.02.18.23.28.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 23:28:46 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH 2/2] riscv: Change code model of module to medany to improve
 data accessing
Date: Wed, 19 Feb 2020 15:28:24 +0800
Message-Id: <1582097304-5547-3-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582097304-5547-1-git-send-email-vincent.chen@sifive.com>
References: <1582097304-5547-1-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_232847_644742_76938998 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 deanbo422@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

All the loaded module locates in the region [＆_end-2G，VMALLOC_END] at
runtime, so the distance from the module start to the end of the kernel
image does not exceed 2GB. Hence, the code model of the kernel module can
be changed to medany to improve the performance data access.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 33a1d7cbf775..a6abe5847e42 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -13,8 +13,10 @@ LDFLAGS_vmlinux :=
 ifeq ($(CONFIG_DYNAMIC_FTRACE),y)
 	LDFLAGS_vmlinux := --no-relax
 endif
-KBUILD_AFLAGS_MODULE += -fPIC
-KBUILD_CFLAGS_MODULE += -fPIC
+
+ifeq ($(CONFIG_64BIT)$(CONFIG_CMODEL_MEDLOW),yy)
+KBUILD_CFLAGS_MODULE += -mcmodel=medany
+endif
 
 export BITS
 ifeq ($(CONFIG_ARCH_RV64I),y)
-- 
2.7.4


