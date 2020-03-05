Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D583E17A96E
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 16:57:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t7XhK3WbkpRhcGElkBXa8rYe7Rj/91Ur64dvi8C1PnU=; b=TZDweQjvgEXzbdOm0J9S8TfVY
	5tdiW6sRe7V4X9QBNMO72UfZKfL3tpJUsFgOKwZSeiEMIbrxiQZ5uCoKJ9E5Z+4FzY1QJ34NSs8a2
	cxwi9B6y/y52yidW5K+wBTmaKpSqd7S1bOQ63Y0QWu2Sf7aehWdzj6rzo21Xk2xXa1Vhpw4p42IKN
	oIjvXPhseXJ2MjeR97izXzLYEVJkbN3zzwJrkfDPSE26/uxcv9QRWzdZgZT0sn30nhxqklMrdgE59
	75Tk/uye95ahazuCUclUGGhTXvZAwD3P4j7neExFyDpD71MKpA0z9DtDtNB/pJmltllYIL8I6vMJu
	AhNXIugEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ssX-0005ds-GN; Thu, 05 Mar 2020 15:57:41 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ssS-0003oF-0p
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 15:57:39 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 07:53:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="234452025"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 05 Mar 2020 07:53:27 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1j9soS-00792v-DX; Thu, 05 Mar 2020 17:53:28 +0200
Date: Thu, 5 Mar 2020 17:53:28 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Daniel Borkmann <daniel@iogearbox.net>
Subject: Re: [PATCH bpf-next v5 0/4] eBPF JIT for RV32G
Message-ID: <20200305155328.GO1224808@smile.fi.intel.com>
References: <20200305050207.4159-1-luke.r.nels@gmail.com>
 <CAJ+HfNjrUxVqpBgC-WLHbZX7_7Gd-Lk7ghrmASTmaNySuXVUfg@mail.gmail.com>
 <4633123d-dc61-ab79-d2ee-e0cef66e4cea@iogearbox.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4633123d-dc61-ab79-d2ee-e0cef66e4cea@iogearbox.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_075738_691729_32AFA7A1 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Alexei Starovoitov <ast@kernel.org>, Netdev <netdev@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Jakub Kicinski <kuba@kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Xi Wang <xi.wang@gmail.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Luke Nelson <lukenels@cs.washington.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, bpf <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 04:19:27PM +0100, Daniel Borkmann wrote:
> On 3/5/20 6:40 AM, Björn Töpel wrote:
> > On Thu, 5 Mar 2020 at 06:02, Luke Nelson <lukenels@cs.washington.edu> wrote:
> > > 
> > > This series adds an eBPF JIT for 32-bit RISC-V (RV32G) to the kernel,
> > > adapted from the RV64 JIT and the 32-bit ARM JIT.
> > > 
> > 
> > Nice work! Thanks for hanging in there!
> > 
> > For the series,
> > Acked-by: Björn Töpel <bjorn.topel@gmail.com>
> > Reviewed-by: Björn Töpel <bjorn.topel@gmail.com>
> 
> Applied, thanks everyone!

> P.s.: I fixed the MAINTAINERS entry in the last one to have both netdev and bpf
> to be consistent with all the other JIT entries there.

Does parse-maintainer.pl happy about your changes?

-- 
With Best Regards,
Andy Shevchenko



