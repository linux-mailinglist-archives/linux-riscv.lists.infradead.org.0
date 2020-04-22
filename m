Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5ED1B4BA1
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 19:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hu4KkkzxRymLwZFTlcayJA4g4LQk0QpBMvKjt6fzrTA=; b=GVb4clSW55lztD
	uiIqCT2wJDOvILovV1rBXSQUrwsCsjog4sfF4F197nBxZ8yrvZKGA53I3DkPI/VSyUhz6Axrk5JVf
	EXxcG55Q1/EaZ983AgUiQWAxxdWy+0GibaVbbZWRj5y7zYdAF0tEdBfoqls05NTZpPLy9Mg7+kdNW
	+d1ZU1klqBCrmt0m/k/aj/zqieGQ5Sy3GpjSRSVU+Of7YBibb6m8KACbYbIcHexsuIthahHORpRkX
	hWVAgNDHW5ONz1SQnU4Hg4IS97uwfh9Z5rw78W1aqlJlzB0Kg7SnbQiXqHj9I4xZxFV6cyeY8UMvn
	XrhRXfcp0KAmeqGdrPCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJ7H-0004Z6-MS; Wed, 22 Apr 2020 17:24:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJ78-0004TN-Lw
 for linux-riscv@lists.infradead.org; Wed, 22 Apr 2020 17:24:48 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B3D720776;
 Wed, 22 Apr 2020 17:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587576286;
 bh=4uB87pnCakWm+ahms4D0ucT5sZSewG+3xTWlAcpDBw4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M3un+b432WzQQKP170CHaNABVf9PRCR/jUXsn65ATwcQi1h/HEu10vUetVcd+4BTH
 8rkvfscc2UC9/6nFKdlYf+nChmaRkYZVtjvwmvNbYi6l6t2Q6f31Aharm4XgBdbVlc
 MYmK2gWreVWARN21Xuf0odyQIvYLrvJpYVb0YcPk=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v5 4/7] include: pe.h: Add RISC-V related PE definition
Date: Wed, 22 Apr 2020 19:24:11 +0200
Message-Id: <20200422172414.6662-5-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200422172414.6662-1-ardb@kernel.org>
References: <20200422172414.6662-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_102446_755465_01ED5245 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Ard Biesheuvel <ardb@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Atish Patra <atish.patra@wdc.com>

Define RISC-V related machine types.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Link: https://lore.kernel.org/r/20200415195422.19866-3-atish.patra@wdc.com
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
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
2.17.1


