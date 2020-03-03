Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D130F177363
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 11:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EkKVIZ3wFZsrArW4uvlls8vPVMedxGwxRyIqgamlvbU=; b=dJtgv1iMBdaXKLiZ6vlEhJ+mc
	J9EbjFui+yFR5gnbwFnA468rYVjXfynNH7VGqad5IJQlYPgPTH4oCfI8Vu+k0a0xz1hJzxi9g1DNi
	cE1ypeRobzxYjHPYvwjdkZ3o5A2IhzSZjUGaO5QrEbFK9eDLDY9FaLL/CZUtOx9uyDhP9bZVhKCyO
	oxVO4xCcQJ+uRTI/xB7+BYTfAXQjClztigv3TAZOmNQ9BrOL78teo1Aq/TDV/W99Y4IJq7sHbdp5C
	5Fs865e4WM/UGHPLFTgVigWlV0/CNzO6GbeP3J4+4GjQ4SB0KTgq+FnyvKUc+6yvMJfwmwdjPn/XE
	8lva335Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j94Nw-0006iI-TT; Tue, 03 Mar 2020 10:02:44 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j94Ns-0006hL-QN
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 10:02:42 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 02:02:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,510,1574150400"; d="scan'208";a="412691972"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga005.jf.intel.com with ESMTP; 03 Mar 2020 02:02:27 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1j94Ng-006W6Q-A9; Tue, 03 Mar 2020 12:02:28 +0200
Date: Tue, 3 Mar 2020 12:02:28 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Luke Nelson <lukenels@cs.washington.edu>
Subject: Re: [PATCH bpf-next v4 4/4] MAINTAINERS: Add entry for RV32G BPF JIT
Message-ID: <20200303100228.GJ1224808@smile.fi.intel.com>
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
 <20200303005035.13814-5-luke.r.nels@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200303005035.13814-5-luke.r.nels@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_020240_868321_C57C1666 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>,
 linux-kernel@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 04:50:35PM -0800, Luke Nelson wrote:

Commit message?

> Cc: Björn Töpel <bjorn.topel@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

> @@ -3213,11 +3213,20 @@ L:	bpf@vger.kernel.org
>  S:	Maintained
>  F:	arch/powerpc/net/
>  
> -BPF JIT for RISC-V (RV64G)
> +BPF JIT for 32-bit RISC-V (RV32G)
> +M:	Luke Nelson <luke.r.nels@gmail.com>
> +M:	Xi Wang <xi.wang@gmail.com>
> +L:	bpf@vger.kernel.org
> +S:	Maintained
> +F:	arch/riscv/net/
> +X:	arch/riscv/net/bpf_jit_comp.c
> +
> +BPF JIT for 64-bit RISC-V (RV64G)
>  M:	Björn Töpel <bjorn.topel@gmail.com>
> -L:	netdev@vger.kernel.org
> +L:	bpf@vger.kernel.org
>  S:	Maintained
>  F:	arch/riscv/net/
> +X:	arch/riscv/net/bpf_jit_comp32.c

Obviously this breaks an order. Please, fix.
Hint: run parse-maintainers.pl after the change.

>  BPF JIT for S390
>  M:	Ilya Leoshkevich <iii@linux.ibm.com>

-- 
With Best Regards,
Andy Shevchenko



