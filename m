Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ACF1E9C18
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 05:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IbvAoLGL035YlltQtpP00AwXGMYJV9lrNv+bBOdgVA=; b=ocgosFehhP/HUP
	vHJT9KJKY18pBMLOEVkDwQ7jNOZdWCiPALUw/uMJ7YnzhnC3ov1d5zxMC3xr017f9o4oVhYveu1cA
	cSVakrU8IfaWimLstcuQQf1Gbiw8IR4gazabDP1SQbKEKkLQ17MmEVRK1t0pema7iMveHOTzWYMG4
	RUdM5ZqEJFimDLO+KmSypin4Xcj4lb5h9oPP1L4D215lz6UxdQ9aUfkii0B26KejAluGyrniMY/uN
	0VOe8wFYlaiELMF7fljspstqf7Xw/UZtMqLmWSI+JsscbjgGbYUQRkoxoolvDGufvY6+mvhTzlT12
	ybhpIVzW/gs6rH7Ikv3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbJH-0001JW-3K; Mon, 01 Jun 2020 03:40:23 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbIy-0007PC-GP
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 03:40:06 +0000
Received: by mail-pg1-x535.google.com with SMTP id t7so2006774pgt.3
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 20:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8IbvAoLGL035YlltQtpP00AwXGMYJV9lrNv+bBOdgVA=;
 b=Rx4ZgrLnzA8+d15P6Z5plMMXRBA4qJ719JLLzx0WQKzXZ1z0tdbDdUblk5JL0Oay3z
 nR2QCbRBnhvP8CVrwzk7ziB9zR5twsYO7XfFTdapDS6CyIrOWCSCDrfFKzBfVZrqHFDV
 LbHsGJ5tCJ5Gy6EB9Mv3QxjGbc5eMiotj/WGZPlpPDV55IeF9kNBG0lmJARfAyc+YE2l
 NBUfbmC3iGc+7VYz0fkmuJaS3x+GOmjIZBRVr6xkPviRu+lsGCqIc+EEVM/LrjkSh8d8
 azi+hJUrNut3XBoxak2A3KuxK+NGDA3PbiSxyne/pdkASWXt1pNBd/PmVz5FbjZB8Owg
 Yxpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8IbvAoLGL035YlltQtpP00AwXGMYJV9lrNv+bBOdgVA=;
 b=F7OM5fjp9nq4y+aEhPNnlq1w6z/8v49yBNMjI+xF6kb8njNZEwcnHmBqvh710S5iFe
 ytnhRNM51bzcykS9w3OQ/GdVIadEnasOWt5NZFXhsh/AOK+AzChjIikzl0cBzJ1CYsap
 4GWFDSPumf8C/DnReKUB7WrmYWkRCzt5/zcGu+T207nZ0xXMUZ18MKnMfNh/TjmDrAMP
 L4b5TP4Vc2LzupWkBlhJVWOWbKAy3PTBxlalG1fYuCBdSFC5Hyc1t9aNFhEUa87oMYmF
 e/+lAsgXPtQ81Jxd3WLipsGiYtAQmDJXZCvQeMx0Q/lWiu0YmpikGj436j7FElUjqzkg
 QWOw==
X-Gm-Message-State: AOAM530TdDokPgBJnWMNREznKIOMlHpyU9cpu76fbFIseO2EoqysSvWr
 Il09RJpQ7ATAoTLDWWl/D3PI2A==
X-Google-Smtp-Source: ABdhPJxF8TkOzad2OFkCz03xBGKg9b30SzsKJpjz+L6ZjKY4SDHV6xcig8EQCFLBAYXELH9/jpbW/g==
X-Received: by 2002:a63:5fc8:: with SMTP id
 t191mr17497244pgb.185.1590982803136; 
 Sun, 31 May 2020 20:40:03 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (2001-b400-e3df-96c7-30f0-f751-b645-f4e3.emome-ip6.hinet.net.
 [2001:b400:e3df:96c7:30f0:f751:b645:f4e3])
 by smtp.gmail.com with ESMTPSA id a7sm13102527pfa.187.2020.05.31.20.40.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 31 May 2020 20:40:02 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, daniel.thompson@linaro.org
Subject: [V5 patch 4/6] riscv: enable the Kconfig prompt of STRICT_KERNEL_RWX
Date: Mon,  1 Jun 2020 11:39:09 +0800
Message-Id: <1590982751-13401-5-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590982751-13401-1-git-send-email-vincent.chen@sifive.com>
References: <1590982751-13401-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_204004_655466_B920C3FF 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kgdb-bugreport@lists.sourceforge.net, linux-riscv@lists.infradead.org,
 Vincent Chen <vincent.chen@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Due to lack of hardware breakpoint support, the kernel option
CONFIG_STRICT_KERNEL_RWX should be disabled when using KGDB. However,
CONFIG_STRICT_KERNEL_RWX is always enabled now. Therefore, select
ARCH_OPTIONAL_KERNEL_RWX to enable the Kconfig prompt of
CONFIG_STRICT_KERNEL_RWX so that user can turn it off.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 85c5c1829cc4..c12d471280f7 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -61,6 +61,7 @@ config RISCV
 	select ARCH_HAS_SET_DIRECT_MAP
 	select ARCH_HAS_SET_MEMORY
 	select ARCH_HAS_STRICT_KERNEL_RWX if MMU
+	select ARCH_OPTIONAL_KERNEL_RWX if ARCH_HAS_STRICT_KERNEL_RWX
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
-- 
2.7.4


