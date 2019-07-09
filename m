Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB3963384
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jul 2019 11:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gy0iddfcQK2NfaE9yJX03/xUqBQ9ylreWvB6LNsYXXo=; b=gKx0ytAMHEBVWtLEKVCN3ZNEIU
	Suy0tjl/j4DTu/IW+PDeUC2RVivQfL7FX/B+Yk9Awp+gBHzxuaxXUWLyqPURJwjCV2x8Zf5LOwQVJ
	I9gi7s1SNf5kk9LYxRiPQX0SP+981iPn2pBogI2wK2lIDCpLjO6vOF707lfshGbkGWAzsvpoHmym2
	riwuO7lUsg8tsdrH/6c+/4ey7ars+wlrD8YnucMO2IwRtkhP7PsA2wU1EwKIvMV5snSNVK4g5avjw
	QVl3aealGuW7jNJtWmu2W7KMYW7pJWhtL4e0ZltJVSFP4GEWP2YoKERDqanDa4luKj1GCDb5sO//a
	auAHk+5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkmUf-0004yv-4f; Tue, 09 Jul 2019 09:33:01 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmUX-0004w7-97
 for linux-riscv@lists.infradead.org; Tue, 09 Jul 2019 09:32:54 +0000
Received: from orion.localdomain ([95.118.92.226]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MuVOM-1icC9g2yKA-00rZ1p; Tue, 09 Jul 2019 11:32:42 +0200
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] scripts: checkpatch.pl: don't complain that debian/rules
 is executable
Date: Tue,  9 Jul 2019 11:32:38 +0200
Message-Id: <1562664759-16009-3-git-send-email-info@metux.net>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562664759-16009-1-git-send-email-info@metux.net>
References: <1562664759-16009-1-git-send-email-info@metux.net>
X-Provags-ID: V03:K1:HweSVGl0vn7e7vNXNWQVSJQNHHYL075aDXcvaRyc/GMMITZGxnf
 h0hvJ/FmBbQVefDRdkRV1ZD6FkMCg1tQ/T/ixiBUY86tYRGrvBz2s6pg3UawtxGPHRid8YH
 ygjyVh9KfqadSy6bBbra9p9ubbrcZROj6JI9FmZfpjlWxdniMeI6gD8rdYa4rEOaA4QHogj
 pXzHFAnez9yKSY0DUP5vA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MlHMSL1MI5Y=:vl/4VtvQv1xavzSbwRYzlH
 SIW68cUFN8QVBCRz2tj4iswvcWAkPJi2JWAxG6CXekKIeTaz4LrXsSWAWG8iSTQcps/Ic6NY2
 Jc7ZET1i5v+1kmF2zoUgEWB5MYw7wdLUQ9IkBeuTvRDWisJ8lRCiWOEptiIxIlQlyYjjk6O5m
 Hak2fRf7kaeew7WCqGxWN1LDsuvJJXLffnJHxlVSgGV8REUle4DEqlXUm6Oh2Kqrxx0mzQYUL
 FtWosfwQf0A7rlMJuFZNqkydq3ru+w5qJFu68SbPPc2lKBvIeZtEuywByEXkJWIezmbFjdjlq
 NUPTeGeBJa+tDJNUC6NQIVe5lEZN2UePGHGX8ix6wvivfog4Ci8HteTIKU9J6eISN+w6qWkRa
 /Y9uJzWeJiIP3C8gjpTf+xEaioS9awCunw4zxSKyIxuoKvSzIiyGfHOl0iZydIdS/YSXcMM1x
 iqoV9Xmp+6FVl9j1eeeVLhrF0RtjBknXdlsMoz3cmIB//k6New2j6PcHjF+KDvcWMe2756UDr
 1eJ07HRgJUbL6s0B/olSYOzD2LsZdgGiAurU0pQoWv+k6pWze8/tTMn9or6yFRi/vsdenbCze
 eN2AlOadohaGx5PpxZKK/4QX0l1E+vrmgqZIkIPZjRv9xtYDPCG0vGGrOPbfkLDshD5FnDa8+
 a7YoiBt3iOtaaaeibiRzpO35i9BmeOSkVcMVo2V2GB5GR5Yjmezx0CAdfT3BCrnALqVDcDfdV
 LX53yFrzp56nUtHPzdzcQYqGFwBy7Pg2mba+0A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_023253_613098_982BB832 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: michal.lkml@markovi.net, linux-kbuild@vger.kernel.org,
 yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com,
 apw@canonical.com, joe@perches.com, linux-riscv@lists.infradead.org,
 info@metux.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

checkpatch.pl complains when adding executable "debian/rules",
obviously a false alarm. Therefore add an exception for that.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 scripts/checkpatch.pl | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 342c7c7..caf0146 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -2587,6 +2587,7 @@ sub process {
 		if ($line =~ /^new (file )?mode.*[7531]\d{0,2}$/) {
 			my $permhere = $here . "FILE: $realfile\n";
 			if ($realfile !~ m@scripts/@ &&
+			    $realfile !~ "debian/rules" &&
 			    $realfile !~ /\.(py|pl|awk|sh)$/) {
 				ERROR("EXECUTE_PERMISSIONS",
 				      "do not set execute permissions for source files\n" . $permhere);
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
