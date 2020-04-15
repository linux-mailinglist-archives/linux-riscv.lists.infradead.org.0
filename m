Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4842F1AB21B
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Apr 2020 21:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goyVmJe+J57iQdmkUJbsbckf52hUGMFdwPN6KGpPCvA=; b=eKJz9O7Ik/0rkz
	wUVCPwKgQo/QdG5VwRvah+trZhWurIzjopYuInYjUvnwDsjge12xONi8uWdbin4WOZ0mhc44MESCt
	bYcq2KOMnzN894S6S4VBVxzXFCaeVtCj6oXy1l7+lQ6MiG5el14nGvCarrU33uqyBb3/gGiB8VSFo
	5xnXHY9hEemw12Oey7siAMAHv7iwEgcO6v1Vx2l4bICd38aDuTSMv6xUS4IKtye3Egx93Tv93Ccrj
	nAesIGf6F2tTZXulSHxIfEwW0UtZESRD1WqvjhcbXiWWxGq9wWxaGXp5qz1Y5iySfP/p0TgjPJ4hq
	gvajIOsmDY/FHuyqoPMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOo8B-00028B-1z; Wed, 15 Apr 2020 19:55:31 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOo7S-0007WM-HN; Wed, 15 Apr 2020 19:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586980486; x=1618516486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qT9c7eXt7ksLkS8LTzuMlCHOyGGyAUacpIVqI65fctQ=;
 b=SKJk+u5OwhWxxCvwwISVxkXMiaNQ6beU7M2vsvT6FVgWFqa6HH5aHgyE
 9DYDgGnvNzSHID7WEkUuaPQjpnWyP/lQ5MFN6P3HFYsI1GvHcv6xWnl8n
 no9ERQL51Em7aHxI/dtWaHUkAHBpEfBPHciaVRny0XO4bBCF8GVpXp0OY
 L2/U0amNhtHa/y6CmeL2UI3fhYFGvEFANcTkeSUMhzr/fVbTYkZ1DlYIn
 YyuuquW+yZYQynKtWjk1sTTDey/EmtIOEPls2NP1rdKpZMKFu+6VaVQiv
 Hb0/zXAJCeKioWZCmDPCWTq9POvV//BuGTtpNuZLjo/9pKYTUcT5G3tjc Q==;
IronPort-SDR: 9wVKyrLUShmzEjfkxIlXfnOBLZJHEFy1zTQdFHpk9wxhMv7drlPSA4BRFLNEQUERhhd3mXwQ70
 vv7b1AyE9isHKpNYHjlfFTBq9XcqICYItOVfcwUo0VsZg+wvQMiar1jTt69iJyU+YWjMZhgefy
 CAU93LFQdPpneIPTeT0NB/R2hBtLb6rgik3RhJd1+zrsX7yvbixANp1Tfvdx8uuDhuGw9LA130
 KanGJ6YxV/5MTjTqZwdIKkPHEa2cy/YpY5S+pdFx6PWiJKRp7Y5AhayNAJ9N6E6Cy5mk3UZYjs
 25Q=
X-IronPort-AV: E=Sophos;i="5.72,388,1580745600"; d="scan'208";a="136848623"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 Apr 2020 03:54:41 +0800
IronPort-SDR: xqHQ9saiQSRdtdSVSrd33cvHxJtOuGRzv7RcooHw6fN8Dp/xMCclaWNgSG+NEG8W0ufJbmoQHy
 N++VfpdlZktkOwAcH/40ef4plk89cg95J9culC05PEMb3abE93vbySOju9riXZzX1aogUNqfmx
 1J48Wj+jld7N7n1sMYUZz6Lc4YL3oocnHVZ+C+3O7g2MpnOfbbOTwdDmBbn//vHGDeEjjiLN+j
 PwR37VsaAtGEFA6WkpL4vrFWu4w9M/gD/EKKnycJaZOgFtXPYTg4wm9K5R54PrQ781SDB6Gd2p
 /2w/Y1cjr7uNNAVBWwevTb5u
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 12:45:09 -0700
IronPort-SDR: knJxDpysSdXz1GAUcRumT6u3DQfuJKc6iXGu46uVx6L6yak8+KA0bLmLArXQGY0922X1ngMzDf
 vQnhFvlOMK4Bvry2PcsKAh2GOXYccYAGxa2yalQ+SUmw8/tqPAan7ZDULyBafUl6HbGby4Cwnb
 tiolgXLVo+J7AD1a2FBjHkCWFs81lfxedUY5YC+Wjl6qq52YwIvKJVv2/Xu+UR57l/VjRwSBMb
 rowNC+ZGuUjXkUKTuXO2prpj+3tXkmss1t6HXEnniWbkBOd9jx5mXLEWgLaJqN3QXAem8bXeTX
 53w=
WDCIronportException: Internal
Received: from 6hj08h2.ad.shared (HELO jedi-01.hgst.com) ([10.86.55.244])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 Apr 2020 12:54:41 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v3 PATCH 2/5] include: pe.h: Add RISC-V related PE definition
Date: Wed, 15 Apr 2020 12:54:19 -0700
Message-Id: <20200415195422.19866-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200415195422.19866-1-atish.patra@wdc.com>
References: <20200415195422.19866-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_125446_661488_CB67A2C2 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Define RISC-V related machine types.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
---
 include/linux/pe.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/pe.h b/include/linux/pe.h
index 8ad71d763a77..daf09ffffe38 100644
--- a/include/linux/pe.h
+++ b/include/linux/pe.h
@@ -55,6 +55,9 @@
 #define	IMAGE_FILE_MACHINE_POWERPC	0x01f0
 #define	IMAGE_FILE_MACHINE_POWERPCFP	0x01f1
 #define	IMAGE_FILE_MACHINE_R4000	0x0166
+#define	IMAGE_FILE_MACHINE_RISCV32	0x5032
+#define	IMAGE_FILE_MACHINE_RISCV64	0x5064
+#define	IMAGE_FILE_MACHINE_RISCV128	0x5128
 #define	IMAGE_FILE_MACHINE_SH3		0x01a2
 #define	IMAGE_FILE_MACHINE_SH3DSP	0x01a3
 #define	IMAGE_FILE_MACHINE_SH3E		0x01a4
-- 
2.24.0


