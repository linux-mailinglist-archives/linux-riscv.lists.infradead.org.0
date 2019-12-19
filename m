Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E6412656C
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Dec 2019 16:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bb2/n5UCj3w+ZH2LUGdei6Z91G9G6bam63A1ORgtXbY=; b=Mnm5ltxoyFEoKMflRMmYAMhwv
	3A+dhlsOnWqZT3+xkxPGiVpg0Q7LqL3rRHMpSJkuEuWVkPGlDH2gLJ0tpuVRwfajcJbpt5FkQIU6M
	VOQBFK6nJ/c/Hs7t1zrn+kRm4tH58xEAzKOWVoMg7nZXw+kTzryetAFLHXnG1cxgN5iz4Ap4RZ7Sl
	KpW1uMIkBSTlhUvHXvpbCcnfUWQl2aeOYCF5Ess3yHR6NE+g5oZXTYcNZmnHsLda7pH0YcZkRU2OR
	9brw2mn1aev5iPis8f2taDksWDg/JJNpcgaIQ5DgCpDgodf5oKHIEwXeeeWX1ed6Oh9lZEy2dS8Ex
	8u6FOJEgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxOs-0001VU-4R; Thu, 19 Dec 2019 15:07:38 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxOo-0001UG-Ly
 for linux-riscv@lists.infradead.org; Thu, 19 Dec 2019 15:07:36 +0000
Received: from [2001:1620:665:0:5795:5b0a:e5d5:5944] (helo=localhost)
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1ihxOh-000547-JE; Thu, 19 Dec 2019 16:07:27 +0100
Date: Thu, 19 Dec 2019 16:07:26 +0100
From: Daniel Borkmann <daniel@iogearbox.net>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Subject: Re: [PATCH bpf-next v2 0/9] riscv: BPF JIT fix, optimizations and
 far jumps support
Message-ID: <20191219150726.GA23959@pc-9.home>
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191216091343.23260-1-bjorn.topel@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.101.4/25668/Thu Dec 19 10:55:58 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_070734_730648_1015DDBB 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org, linux-riscv@lists.infradead.org,
 bpf@vger.kernel.org, ast@kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 10:13:34AM +0100, Björn Töpel wrote:
> 
> This series contain one non-critical fix, support for far jumps. and
> some optimizations for the BPF JIT.
> 
> Previously, the JIT only supported 12b branch targets for conditional
> branches, and 21b for unconditional branches. Starting with this
> series, 32b branching is supported.
> 
> As part of supporting far jumps, branch relaxation was introduced. The
> idea is to start with a pessimistic jump (e.g. auipc/jalr) and for
> each pass the JIT will have an opportunity to pick a better
> instruction (e.g. jal) and shrink the image. Instead of two passes,
> the JIT requires more passes. It typically converges after 3 passes.
> 
> The optimizations mentioned in the subject are for calls and tail
> calls. In the tail call generation we can save one instruction by
> using the offset in jalr. Calls are optimized by doing (auipc)/jal(r)
> relative jumps instead of loading the entire absolute address and
> doing jalr. This required that the JIT image allocator was made RISC-V
> specific, so we can ensure that the JIT image and the kernel text are
> in range (32b).
> 
> The last two patches of the series is not critical to the series, but
> are two UAPI build issues for BPF events. A closer look from the
> RV-folks would be much appreciated.
> 
> The test_bpf.ko module, selftests/bpf/test_verifier and
> selftests/seccomp/seccomp_bpf pass all tests.
> 
> RISC-V is still missing proper kprobe and tracepoint support, so a lot
> of BPF selftests cannot be run.

Applied, thanks!

