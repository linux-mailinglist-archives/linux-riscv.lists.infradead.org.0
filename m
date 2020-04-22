Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992011B4B12
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 18:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ccup9s4TMsPoGSqQ7E5OueomskUIx+Hkkn8jfkY9+Ms=; b=eeYnro9oxzuKH3YufQ7nOIZJdD
	8nm2orNdUmvX+Vsf9GuWxVRNW858Y2m44loLmnlRyl0SfebVTZJvkaW5jnOySfuipBJHNik65lL9F
	aryz6K5cx7Z+aRKIPK30I0Lmy+A7kOCyn6erdYFZ7pmt0zQ5c4v945j755/IRq/+5QFl3xcAIKuQ5
	LHMIUGzM50DNHRXL04mzcTOPFs6NpHOWlpj5HHH3N9fdM8VvJ9vlmc4+HxNizox8mwdCoGazxZKhP
	EwTeqT07k8+ob3gKCl3+/MLU1NkaCaVpZcm41DBpDu6CpLwxpDCuufjNWD8qWXgrQGIl97Ps2GC/q
	hazMLZFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRIfV-0001sB-Nv; Wed, 22 Apr 2020 16:56:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRIfT-0001qk-1L
 for linux-riscv@lists.infradead.org; Wed, 22 Apr 2020 16:56:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so3256160wmg.1
 for <linux-riscv@lists.infradead.org>; Wed, 22 Apr 2020 09:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ccup9s4TMsPoGSqQ7E5OueomskUIx+Hkkn8jfkY9+Ms=;
 b=Zgys1W/8lYMwcQKBAbZ4FqaTnJ8XjvUEe2Mb1uIuhDqTztgew1WDsBpoua3OLZC7iz
 igs0NvDR77QXJ5mEyxxhH2YBZuKI/QSxAEyr59Ycv5Z0ff5EF/7nlhaaHp2eu65spTSe
 l/qL2NLsh2l+a5aZBojH2uwfcrE+KoAfFHrOiToTuF5JUlQ3Co09UHcDc3JTxi39MJRW
 LSOBie6N/+IwXihFFMrVZkUx8uV/BY2Dc9lWo4rQF5B1EEpQlusln841HdkrGVfSHB+P
 suXuLi8JnaLEvooh0U+Dt3uMmuCAuqX7fq+AtR2jQZH2FHt8TfXjvzOXZtWmD/Ev6oXi
 IqaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ccup9s4TMsPoGSqQ7E5OueomskUIx+Hkkn8jfkY9+Ms=;
 b=r2DjnGJL2jMuBFkWfVcJNZs7vAN5tuII9J8DXIyISk7oWf+SxibBUNTaeNYb9141eu
 Yd6iOXSxAVTUbGI6ACGVNp8sRAePICt53WlQSWbc2kV2VXO/lYVICpGyZLMNSCJdhqjG
 6ltMDn6xUNGRgxaMd28ScdpaNDT6S6MWkEkr3VFK1a64Ot9B7eT6Lvehe7HTcNBade1t
 /8trNEb0GkfzXJ48Joc8uSFhjS/Bxf2+RqqagiwU+up24nGVxGIZyh5XNXR79bq8A9em
 tuJhrHekaY9LK10HfVnLB5G/kHcT5ZoP9D0osgh/BxyXMSH8D+LWPh3n5LKE4MWSPr5o
 w2Zw==
X-Gm-Message-State: AGi0PubIs+WpMOVeB17VJ6YGrIx3fpgm0otEyRp2WmcL48wRsqUnXwAK
 z52BGRmXXOFgri0sw8FV+TUjLFhk
X-Google-Smtp-Source: APiQypLfxbo1dl04eM+WbGeSeuqR2xnV1J9XsjWAoXc+r0E1Thzy+N1jwKJH2hTcNIDH3xJtfNCldw==
X-Received: by 2002:a1c:96c6:: with SMTP id
 y189mr12194273wmd.106.1587574565875; 
 Wed, 22 Apr 2020 09:56:05 -0700 (PDT)
Received: from aurora.lan (92-110-144-95.cable.dynamic.v4.ziggo.nl.
 [92.110.144.95])
 by smtp.gmail.com with ESMTPSA id h10sm9185903wrq.33.2020.04.22.09.56.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 09:56:05 -0700 (PDT)
From: "Wladimir J. van der Laan" <laanwj@gmail.com>
To: linux-riscv <linux-riscv@lists.infradead.org>
Subject: [PATCH] riscv: disable ARCH_HAS_STRICT_KERNEL_RWX for nommu builds
Date: Wed, 22 Apr 2020 18:55:37 +0200
Message-Id: <20200422165537.26883-1-laanwj@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_095611_102566_D9F61141 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [laanwj[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Wladimir J. van der Laan" <laanwj@protonmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: "Wladimir J. van der Laan" <laanwj@protonmail.com>

For non-MMU systems, which tend to be low-memory SoCs such as the K210,
it's expensive to align sections to 2MB. Besides that, the security
guarantees cannot be made anyway.
---
 arch/riscv/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 62f7bfeb709eb1cdabaccce261320dd0191b3c48..74f82cf4f7816b99fc54155fd40dcf4d40cbf956 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -60,7 +60,7 @@ config RISCV
 	select ARCH_HAS_GIGANTIC_PAGE
 	select ARCH_HAS_SET_DIRECT_MAP
 	select ARCH_HAS_SET_MEMORY
-	select ARCH_HAS_STRICT_KERNEL_RWX
+	select ARCH_HAS_STRICT_KERNEL_RWX if MMU
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
-- 
2.17.1


