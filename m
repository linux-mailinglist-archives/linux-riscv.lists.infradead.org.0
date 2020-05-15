Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC55F1D5254
	for <lists+linux-riscv@lfdr.de>; Fri, 15 May 2020 16:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Xdr7If4G7tlq1M/OLagjELexqLovtR85HrbwT8o5D0=; b=l4D0sJsLdShSeI
	a3C2cidC2C3z7X/gJ9t0DS+40hPpIqnO7Qo4CA7sEzAYgVRe+VcqsbxMDfbbPOn4AqSfZND/hymKY
	NWf4wlMZrNxVHi+AsCsRWsRLKsLiYqQGB17BH5IzjicC5GOMqrKoiPBhGCwCIuF1ALm5nwMQuAi2c
	8TS8lMT/KhZTC88f9Vg+Xdms8Ic4SWDFbvgNjkwLCKVUx5lN9Qw8oNCJdHmV+H37FyHRCXT8McZvu
	LTPZf9gzyYkbWm3HTT39hT8fvmlgtwd4/TCqrWmYMhZo3HNMDlC0hZkh39pzVQya4hafpNNDivMTy
	8RDVbDKhFcN2TdnT0O1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbcm-0003lu-1X; Fri, 15 May 2020 14:47:44 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbTV-0005Fj-SN; Fri, 15 May 2020 14:38:10 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 27/29] binfmt_flat: use flush_icache_user_range
Date: Fri, 15 May 2020 16:36:44 +0200
Message-Id: <20200515143646.3857579-28-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515143646.3857579-1-hch@lst.de>
References: <20200515143646.3857579-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Greg Ungerer <gerg@linux-m68k.org>,
 linux-arch@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-kernel@vger.kernel.org, Jessica Yu <jeyu@kernel.org>,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

load_flat_file works on user addresses.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Greg Ungerer <gerg@linux-m68k.org>
---
 fs/binfmt_flat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index 831a2b25ba79f..6f0aca5379da2 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -854,7 +854,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 #endif /* CONFIG_BINFMT_FLAT_OLD */
 	}
 
-	flush_icache_range(start_code, end_code);
+	flush_icache_user_range(start_code, end_code);
 
 	/* zero the BSS,  BRK and stack areas */
 	if (clear_user((void __user *)(datapos + data_len), bss_len +
-- 
2.26.2


