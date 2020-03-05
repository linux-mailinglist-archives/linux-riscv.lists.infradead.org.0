Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7170717A8BB
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 16:20:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0Sv9A2ymLJ9D5W9l4hga+/cmzoioMTBjTqUPlIGhug=; b=COGtmUdRkzSx7s
	Pzo/1GWbc0R6edHoVEWctbldkXto4krKMuiG/MsPVCI+Jt/4GBpvBHjctOtU3+lGUy3E69epSrXJH
	D4lL9WOm08tdD+YSPqkdOSBWCNqf1TrfmT61zhJljcObLxNBUek8/OT7B/IuupYav5hpheKAYvyHU
	pqqFKYmw9rf5eCqUIi4iQW159Fj67xMU+VIa9nJa/I6Gb7mBcuoEqFQKE8NofcGOiXrVTvXgO6pHl
	cX68TiUR74z26oBZma0LNOAP+pAPEfOzGeW0qvVQljw12G7/r0oNxcG3EzTUrbpYm4rAnSaGQbMJ/
	eHoB3B5qZZe2/RouY2lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9sIU-0002G6-PP; Thu, 05 Mar 2020 15:20:26 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9sIQ-0002Ei-F4
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 15:20:24 +0000
Received: from sslproxy03.your-server.de ([88.198.220.132])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1j9sHZ-000311-Dl; Thu, 05 Mar 2020 16:19:29 +0100
Received: from [85.7.42.192] (helo=pc-9.home)
 by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1j9sHY-000BjU-MB; Thu, 05 Mar 2020 16:19:28 +0100
Subject: Re: [PATCH bpf-next v5 0/4] eBPF JIT for RV32G
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Luke Nelson <lukenels@cs.washington.edu>
References: <20200305050207.4159-1-luke.r.nels@gmail.com>
 <CAJ+HfNjrUxVqpBgC-WLHbZX7_7Gd-Lk7ghrmASTmaNySuXVUfg@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <4633123d-dc61-ab79-d2ee-e0cef66e4cea@iogearbox.net>
Date: Thu, 5 Mar 2020 16:19:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAJ+HfNjrUxVqpBgC-WLHbZX7_7Gd-Lk7ghrmASTmaNySuXVUfg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25742/Thu Mar  5 15:10:18 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_072022_508862_9BE71613 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Jakub Kicinski <kuba@kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Xi Wang <xi.wang@gmail.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Netdev <netdev@vger.kernel.org>,
 bpf <bpf@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/5/20 6:40 AM, Björn Töpel wrote:
> On Thu, 5 Mar 2020 at 06:02, Luke Nelson <lukenels@cs.washington.edu> wrote:
>>
>> This series adds an eBPF JIT for 32-bit RISC-V (RV32G) to the kernel,
>> adapted from the RV64 JIT and the 32-bit ARM JIT.
>>
> 
> Nice work! Thanks for hanging in there!
> 
> For the series,
> Acked-by: Björn Töpel <bjorn.topel@gmail.com>
> Reviewed-by: Björn Töpel <bjorn.topel@gmail.com>

Applied, thanks everyone!

P.s.: I fixed the MAINTAINERS entry in the last one to have both netdev and bpf
to be consistent with all the other JIT entries there.

