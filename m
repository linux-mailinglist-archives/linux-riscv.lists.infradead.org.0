Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF053E1F04
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 17:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Date:Message-ID:Subject:From:To:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Nf2sPv9JoqVb04pm27E3jDn2Jf2+2RUcQfnzHwooepg=; b=HsC/sF97NIe5uqHI3SOf7tgX1v
	ft7pSSoMXrHiY1CB5xvgRu5N0mmbqf57Dshs1Wnvg1TLEh6x75gvdlmstPXMhmfmI/C9vk8vdLwXQ
	YWOREZtprW75od+zolggjDtkusVpPLAjHWU3SWPiivqJEAI2P5l8A2Yr9ljiJ1ylCUCAM4dlsVqiw
	z16oHzOn0HMArAaG+y1rYR6VI1jq/lLny1jz30TJ15lbSuobk/0xrpJAL84lkmBSAWG3WhaX2/AJT
	wJUn8LXOaFiuwyFZbXFX3riGHJQgSeXyUMlz/a7seJFIQXm5rHlOb3PMDN464eySOEgpFj5FTPte2
	WYyIbLpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNIMk-0001WW-5e; Wed, 23 Oct 2019 15:16:02 +0000
Received: from mailgate.ics.forth.gr ([139.91.1.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNIMg-0001Vu-Ri
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 15:16:00 +0000
Received: from av3.ics.forth.gr (av3in.ics.forth.gr [139.91.1.77])
 by mailgate.ics.forth.gr (8.15.2/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 x9NFFnw6055728
 for <linux-riscv@lists.infradead.org>; Wed, 23 Oct 2019 18:15:49 +0300 (EEST)
X-AuditID: 8b5b014d-787ff70000003678-69-5db06e9f4d87
Received: from enigma.ics.forth.gr (enigma.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 08.EB.13944.F9E60BD5; Wed, 23 Oct 2019 18:15:43 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user: mick at ics.forth.gr
To: linux-riscv@lists.infradead.org
From: Nick Kossifidis <mick@ics.forth.gr>
Subject: Perf-related compilation issues
Message-ID: <1bba622b-1f59-d21b-f396-d9c1a021dc3a@ics.forth.gr>
Date: Wed, 23 Oct 2019 18:15:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------3A6B26ED3074B4F0F5F3BD9F"
Content-Language: el
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLLMWRmVeSWpSXmKPExsXSHT1dWXd+3oZYg/V7LS22fW5hc2D02Lyk
 PoAxissmJTUnsyy1SN8ugStj0dQVbAV/pCreT/zF3MC4QqKLkZNDQsBE4u7912wgtpDAUUaJ
 iX8tIeKWEps/vWTpYuTgEBFQlph/zxUkzCagKTH/0kEWEFtYQEPiQu9zdhCbV8Be4vHRlWBx
 FgFViQ1PToCNFBWIkJh0bScLRI2gxMmZT8BsZoEAiadfpzFD2CISLc0fWCcw8sxCUjYLSdks
 JGUQtrrEn3mXoOLaEssWvoayzSXub+jEIm4hcfP7TqYFjByrGAUSy4z1MpOL9dLyi0oy9NKL
 NjGCQ5HRdwfj7c1v9Q4xMnEwHmJUAep6tGH1BUYplrz8vFQlEd47BmtjhXhTEiurUovy44tK
 c1KLDzFKc7AoifPmcS+PFRJITyxJzU5NLUgtgskycXBKNTDt2rTtOdPpnzKn53MY3N5rocsy
 L6bxqkLY0cmlwmsauXbLLdsc3Gqpb+xpsmNu62Leygyp8hSFOfd/8NU+vOygxD0xu9asnHOJ
 LEP6qqqTLgs6gu7r6p2a/fdb8apTm3cuNZKp+fFqpoHWrTsBWUGh7dYppv3MgvfNZarX93qs
 2s0l9ff2egPtuvk1emnritbkHJloFXxquchNHa3bfL7Ct+PSHz5zeRIdZHD93dPdSTdOPlkv
 tmindZ/igl2qHnX95Sn537bx/yx+qrDa8Nzl75Nf2dhH7nx3J37NW5Zy46N9fzYdZnbxbXfR
 5Zni8Nq+5XvOyvNW6VeTGHKZlTcd/f7xyrbHmTL7NA9lPTFUYinOSDTUYi4qTgQAE5uO78AC
 AAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_081559_271747_DAA95332 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.2 listed in list.dnswl.org]
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------3A6B26ED3074B4F0F5F3BD9F
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello all,

a) Compiling the current fixes branch with a minimal config I get the
following error:

riscv64-unknown-linux-gnu-ld: arch/riscv/kernel/perf_callchain.o: in
function `.L0 ':
perf_callchain.c:(.text+0x16a): undefined reference to `walk_stackframe'
make: *** [Makefile:1074: vmlinux] Error 1


I've removed the static delcaration of walk_stackframe on stackframe.c
and marked walk_stackframe as extern on perf_callchain.c to fix the
above issue.


b) Then If I compile the kernel without CONFIG_RISCV_BASE_PMU I get


=2E/arch/riscv/include/asm/perf_event.h:26:2: error: #error "Please
provide a valid RISCV_MAX_COUNTERS for the PMU."
 #error "Please provide a valid RISCV_MAX_COUNTERS for the PMU."


I noticed that the only place where CONFIG_RISCV_BASE_PMU is checked is
on perf_event.h and only for this parameter that's not defined anywhere
else. So for now if one tries to compile the kernel without PMU the
kernel won't compile + I don't see how unsetting this saves code size as
the config description says.


Since I'm not familiar with the perf code how should I approach this ?
Is the fix on a correct ? How should we handle b ?

Thanks a lot in advance.

Regards,
Nick

--------------3A6B26ED3074B4F0F5F3BD9F
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

mQENBFzZWtwBCADKPn3YlVAho32wgflIm0rYOSGswdG9Y8m27nZrs7Vd0rP13i9v
oGhpudY/oq+GV42S8s8KRI4E38rbW4bQC28LKC7XO6j0vu1hZpgV1Xs71pEjn/3U
a1Rzk9ZLEyBE7W4QEAcKmxOCNljhshjoni6cSVmZo4BGqRhgSWE0LIWHzxigT2Vy
coLeoUbkRvjZbaAA9EvD1HoJ+aBqO2tJfG5RaBrhGQMb4MQDSA0E6q/yk5B9m04U
ulxVhx/is/0fGTh4GvrDg3y58hYNx4nLmoQEFUE6TnctlcK0pehJ4327YsUR4PE4
mbXnPCESTJDn26aLsw1cS1gDq5oMib2Yt94LABEBAAG0I05pY2sgS29zc2lmaWRp
cyA8bWlja0BpY3MuZm9ydGguZ3I+iQFUBBMBCAA+FiEEjcr5kzeu2JH2OScZm0nK
dvKCPe8FAlzZWtwCGwMFCQHhM4AFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQ
m0nKdvKCPe+B3AgAgqNC6SuP5RDyczNqRPzTcQJM0zqh5cUtLlyOA1dkzDSH0X0Y
MpfT9HpxrqtIjA6dABk56uRZxB98J5fKu2NEKCyrDV83hjbyXLvkbbJKvKSUepTx
0J7djRSpQ0HBy2FL6+3mWUyM+Y9s/Hriw5+vqqtKJvU0SMYnOmujv2nJIrt81zZl
HlqzAyGkIgSQBqCLc8PpTImg/Op4BlG/GRuRBjq9bNq+KB7laFVKJNBAd6aWznh2
n6iN5E7+IdHJhhpzi8XtkTN4Nnh92cCm+NQQUPtamhBCafA35XNyV8k/+xaP9t4R
m/uZdATlgV/sFW/pkOtAb68Yf9SfNpfPHcqtpbkBDQRc2VrcAQgAyFPHy27tQrSq
CXoxAeTJTOiV/0u9iMEulJXiSoI345aw3LcSMAaBmT2tqTkSPUtsgUQQUNh7higK
0Vekw7IuQthZ1zK2QGnyp2OZMLCSDsQkUtNV9uvCsNyqM0r+AtD8tluoq1e2GQ6Q
RT7xR6QS+vRxLnvlOK3F5JKzzf1ESH1JNeEKiagMEstEwZOdz5t9Wf25otlU6QF2
Yfnl7SlavlYCkxZSpsuPGbdSi8d1PHBA8xZUA7iql4Wv8Bgos9RQV2c+O7hlVbiY
v8dsjueoUNNDgK2s1h/iM7nZsBjD809ho07JR/fVQS7ykfXGgInInHkG8NNY9pRl
MW99stzZGwARAQABiQE8BBgBCAAmFiEEjcr5kzeu2JH2OScZm0nKdvKCPe8FAlzZ
WtwCGwwFCQHhM4AACgkQm0nKdvKCPe/LIwf/ZXhkFJ6tLSMmB3NvpeBG2Z7uu/tZ
9uRb5hg47fkaNguHKVt28UXCPhpFN7d39eMiC82lsR/jscVy1z6oOmkJ8T7/7yxY
FlN1EFgDJM2FYcS+V88slcHn0GzCMk6AEi2zf825oHqDg8l4JUI5Htunt8BlK+eZ
DM+ezxulA6w8vNduhsvTFt0Jh8WUn1tIpVHt5loehQy0Npy79Fg4+TrapdIqfSw4
C1pO2MKBVDC/4VXOgV2YIUkHhoQ2BTOXQzIf0C3240lr14u7Tvhg/JWpe1jUoBHa
0IuDJbgWgNcGuhjnEisrHlT2u0CSR8NJY4hCmTY3Jf2SV+MRs8Homz3IdA=3D=3D
=3DD0B2
-----END PGP PUBLIC KEY BLOCK-----

--------------3A6B26ED3074B4F0F5F3BD9F
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--------------3A6B26ED3074B4F0F5F3BD9F--

