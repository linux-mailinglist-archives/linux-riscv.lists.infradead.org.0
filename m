Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F10960D96
	for <lists+linux-riscv@lfdr.de>; Sat,  6 Jul 2019 00:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtcsuHK9uGNmWmAVasCQkdijf8hdpPtZReRRSKjfATo=; b=mZLBDhQa+cFEoQ
	wNRE8bheznpP8mxTuqImjh0doyIbEcDXPmqcM+NOsqbgQecIL6SHte8aB80C4zp1MEj4HgkLeNOPw
	nvhy6hFOaUYay71y30c4zYyneyMNokHiCscHK2G3JqJgBbFODejed1Y2BP4OfC3fhqGm3XaZlj8qB
	vTuXQq11eaMMB5w8JgwpxqTM438t4o1MpLEM3OlvlmlA3+TRyia1BOneNAYq3zFv1q1Sfn4cv6jXd
	+jaTu6H0LIEwZZBWIHgciO0AaFOusVbJZfQNinN3W33iD0gFwsMlTHv+avEoA4E+/sz/VMTQ+0lsW
	rXQAhPUBB70ckBp7mNZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjWH0-00027l-U6; Fri, 05 Jul 2019 22:01:42 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjWGw-00026c-H3
 for linux-riscv@lists.infradead.org; Fri, 05 Jul 2019 22:01:39 +0000
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1hjWGZ-0003Tn-0E; Sat, 06 Jul 2019 00:01:15 +0200
Received: from [178.193.45.231] (helo=linux.home)
 by sslproxy01.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1hjWGY-0004Kx-MV; Sat, 06 Jul 2019 00:01:14 +0200
Subject: Re: [PATCH bpf-next] Enable zext optimization for more RV64G ALU ops
To: Luke Nelson <lukenels@cs.washington.edu>, linux-kernel@vger.kernel.org
References: <20190705001803.30094-1-luke.r.nels@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <fbd0a41a-2d45-7b25-b417-f325d31c0074@iogearbox.net>
Date: Sat, 6 Jul 2019 00:01:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190705001803.30094-1-luke.r.nels@gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.3/25501/Fri Jul  5 10:01:52 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_150138_566064_0B16373B 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [213.133.104.62 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 bpf@vger.kernel.org, Luke Nelson <luke.r.nels@gmail.com>,
 Jiong Wang <jiong.wang@netronome.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Song Liu <liu.song.a23@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, netdev@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 07/05/2019 02:18 AM, Luke Nelson wrote:
> commit 66d0d5a854a6 ("riscv: bpf: eliminate zero extension code-gen")
> added the new zero-extension optimization for some BPF ALU operations.
> 
> Since then, bugs in the JIT that have been fixed in the bpf tree require
> this optimization to be added to other operations: commit 1e692f09e091
> ("bpf, riscv: clear high 32 bits for ALU32 add/sub/neg/lsh/rsh/arsh"),
> and commit fe121ee531d1 ("bpf, riscv: clear target register high 32-bits
> for and/or/xor on ALU32")
> 
> Now that these have been merged to bpf-next, the zext optimization can
> be enabled for the fixed operations.
> 
> Cc: Song Liu <liu.song.a23@gmail.com>
> Cc: Jiong Wang <jiong.wang@netronome.com>
> Cc: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Applied, thanks!

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
