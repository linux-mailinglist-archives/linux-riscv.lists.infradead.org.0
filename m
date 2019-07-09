Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDADA63413
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jul 2019 12:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtbSV33EOjktLudGvUNEBkVE0b1YcaFquHPcqRqZs6o=; b=Z2LehCqUn7hqmc
	dtcCXE9jODGeWSfuTwuCBeRPYUs8pnbD8ZL6rkixwzuxvEgyM1WF/V9Wgeb86IJ+v6qbHJigNtfFk
	pfTw/0iRiiDcVSwxUsbtup1jXStWmIxwqFHwGy+0BBxlp/CU3BzJ/nxLtuWoKMkMfcf6gltVAfW6T
	lYky0gDrYmbZn8Xq2TG8B/C4RSlYkymCOXKsZz7JiT64MXlHc+NAH83Imw4lE5eG9I48b80Gv+Gq2
	ICbkF2G4S1kWSwRhVzyPkNi/rHzIzJUJwRB/h1PL0GmUqkk96/thLVYuacT7L7Bzb7U/loxNfSDw5
	Vi1cHzzTAO/vmElNaL5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknAq-0002to-OP; Tue, 09 Jul 2019 10:16:36 +0000
Received: from smtprelay0089.hostedemail.com ([216.40.44.89]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hknAn-0002sk-Bm
 for linux-riscv@lists.infradead.org; Tue, 09 Jul 2019 10:16:35 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id A263718225E17;
 Tue,  9 Jul 2019 10:16:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 64, 4, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1544:1593:1594:1711:1730:1747:1777:1792:2197:2199:2332:2393:2559:2562:2828:3138:3139:3140:3141:3142:3354:3622:3653:3865:3866:3868:3872:3874:4250:4321:4605:5007:6117:6119:6238:10004:10848:11026:11232:11657:11658:11914:12043:12297:12438:12555:12740:12760:12895:12986:13161:13200:13225:13229:13255:13439:13972:14096:14097:14181:14659:14721:14913:21080:21221:21324:21451:21627:30054:30056:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: hen97_38791bb4ff724
X-Filterd-Recvd-Size: 5728
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Tue,  9 Jul 2019 10:16:27 +0000 (UTC)
Message-ID: <691a85e0825376450b946effad13ffdeecde611d.camel@perches.com>
Subject: Re: [PATCH 3/4] scripts: checkpatch.pl: don't complain that
 debian/rules is executable
From: Joe Perches <joe@perches.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>, 
 linux-kernel@vger.kernel.org
Date: Tue, 09 Jul 2019 03:16:26 -0700
In-Reply-To: <1562664759-16009-3-git-send-email-info@metux.net>
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-3-git-send-email-info@metux.net>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_031633_536183_58EEF08E 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.89 listed in list.dnswl.org]
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
Cc: michal.lkml@markovi.net, clang-built-linux@googlegroups.com,
 linux-kbuild@vger.kernel.org, yamada.masahiro@socionext.com, apw@canonical.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-07-09 at 11:32 +0200, Enrico Weigelt, metux IT consult
wrote:
> checkpatch.pl complains when adding executable "debian/rules",
> obviously a false alarm. Therefore add an exception for that.
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  scripts/checkpatch.pl | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 342c7c7..caf0146 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -2587,6 +2587,7 @@ sub process {
>  		if ($line =~ /^new (file )?mode.*[7531]\d{0,2}$/) {
>  			my $permhere = $here . "FILE: $realfile\n";
>  			if ($realfile !~ m@scripts/@ &&
> +			    $realfile !~ "debian/rules" &&
>  			    $realfile !~ /\.(py|pl|awk|sh)$/) {
>  				ERROR("EXECUTE_PERMISSIONS",
>  				      "do not set execute permissions for source files\n" . $permhere);

There are several of these scripts that have
no filename extension type and I suspect just
adding debian/rules isn't all that valuable.

$ git ls-files -s | grep '^100755' | grep -vP '\.(py|pl|awk|sh)$' | grep -v 'scripts/'
100755 b803f4f886b5e5e4046daedbd516e894f0f7e897 0	Documentation/target/target-export-device
100755 532d458333965b80f8f3ea149ad705208893b58f 0	arch/powerpc/boot/wrapper
100755 fbac1732f874e8d117b9c4aaf0a66b203370b933 0	arch/s390/kernel/syscalls/syscalltbl
100755 47c481239e986c35ba4818cb3e96f9ba7a813c2e 0	drivers/staging/greybus/tools/lbtest
100755 d7fc32ea8ac224f0fb6f28c58b196c665e510992 0	lib/build_OID_registry
100755 030a60b0404632ed598e5f5b56267e2a6af4b25f 0	samples/mic/mpssd/micctrl
100755 248ac7313c714d7acb29ceaaadd8fc8ee484e85e 0	samples/mic/mpssd/mpss
100755 2240cb56e6e5e6ed30a75913d4d5fecbb8f193c3 0	tools/debugging/kernel-chktaint
100755 ad1b9e646c4913b31aab9696245bc94b661647ff 0	tools/kvm/kvm_stat/kvm_stat
100755 49af9fe19f5b0533b64c117a363fc1c3785fa1da 0	tools/lib/lockdep/lockdep
100755 459469b7222c1410f7a701561eec004d86568369 0	tools/perf/arch/arm64/entry/syscalls/mksyscalltbl
100755 6c58060aa03beae7456e4f7cb0588e70207314be 0	tools/perf/arch/powerpc/entry/syscalls/mksyscalltbl
100755 72ecbb67637079f709262298981162b6cbb12c9f 0	tools/perf/arch/s390/entry/syscalls/mksyscalltbl
100755 fae26b1cf08f50a8c0caacf7bc0715e948ef0c03 0	tools/perf/tests/perf-targz-src-pkg
100755 3802cee5e1887f5b406324484832305e4a1b29b6 0	tools/perf/util/PERF-VERSION-GEN
100755 6d5e9e87c4b7f51f5904d17fa016a134563ba0d0 0	tools/testing/selftests/ftrace/ftracetest
100755 ea5938ec009a5eb9e28cb1778e081a568e66fd65 0	tools/testing/selftests/net/run_afpackettests
100755 14e41faf2c5740633f9dd30e500543647b736734 0	tools/testing/selftests/net/run_netsocktests
100755 4509f0cc9c918d33c39caf3372f2bcdfc81bceff 0	tools/testing/selftests/pstore/common_tests
100755 2a329bbb4aca3ad391a5aca9a67f554b060fdca2 0	tools/testing/selftests/pstore/pstore_crash_test
100755 d6da5e86efbf89c7f4d7454d9a2c6a11ef2ea9e4 0	tools/testing/selftests/pstore/pstore_post_reboot_tests
100755 1cef54458aff916b2f00af33deef703cb3101ab0 0	tools/testing/selftests/pstore/pstore_tests
100755 951c507a27f7df05f82ce2de78abba2e0d9848f4 0	tools/testing/selftests/vm/run_vmtests

Maybe setting an internal flag and looking at the file content
for a shebang might be better.

$ git ls-files -s  | grep '^100755' | grep -vP '\.(py|pl|awk|sh)$'|grep -v 'scripts/'|awk '{print $4}'|while read file ; do echo "$file       $(head -2 $file | grep '#!')" ; done
Documentation/target/target-export-device	#!/bin/sh
arch/powerpc/boot/wrapper	#!/bin/sh
arch/s390/kernel/syscalls/syscalltbl	#!/bin/sh
drivers/staging/greybus/tools/lbtest	#!/usr/bin/env python
lib/build_OID_registry	#!/usr/bin/perl -w
samples/mic/mpssd/micctrl	#!/bin/bash
samples/mic/mpssd/mpss	#!/bin/bash
tools/debugging/kernel-chktaint	#! /bin/sh
tools/kvm/kvm_stat/kvm_stat	#!/usr/bin/env python3
tools/lib/lockdep/lockdep	#!/bin/bash
tools/perf/arch/arm64/entry/syscalls/mksyscalltbl	#!/bin/sh
tools/perf/arch/powerpc/entry/syscalls/mksyscalltbl	#!/bin/sh
tools/perf/arch/s390/entry/syscalls/mksyscalltbl	#!/bin/sh
tools/perf/tests/perf-targz-src-pkg	#!/bin/sh
tools/perf/util/PERF-VERSION-GEN	#!/bin/sh
tools/testing/selftests/ftrace/ftracetest	#!/bin/sh
tools/testing/selftests/net/run_afpackettests	#!/bin/sh
tools/testing/selftests/net/run_netsocktests	#!/bin/sh
tools/testing/selftests/pstore/common_tests	#!/bin/sh
tools/testing/selftests/pstore/pstore_crash_test	#!/bin/sh
tools/testing/selftests/pstore/pstore_post_reboot_tests	#!/bin/sh
tools/testing/selftests/pstore/pstore_tests	#!/bin/sh
tools/testing/selftests/vm/run_vmtests	#!/bin/bash


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
