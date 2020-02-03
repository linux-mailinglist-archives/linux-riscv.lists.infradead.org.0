Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC651151173
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Feb 2020 21:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uT7eGOXmEFMEJjc37FHStnKz2H21VnboIvBrKOOOiEM=; b=YoFkINoDyVZlln
	CffA5VyebRouoiYK3rDK5pZjHCzZT4OZyH1tflzs9wu5/FkdLIxpzYL+3MEg2onqLp+Tfn3Lt42pn
	hCPkC2mOw6LQpZTgKo3QfKHZDGhQjIbWj93ifhL0NOc0fIsDLV8vEP/KYjj2MoJH8v42D0ymN7Z4u
	YcXPd9DYoWpkP0M0riu5S4/uEWYov7+XFQabDKUtADBBrRALsqhDvDedxMGiRPxmTiywnvGdotOon
	UZ+QnTQqoWMk7NJy2/yVKZJjS0onPeTk8NbjUodGGKuVXucv/6gQFsNlc9LyfZHui3tT2RrL8uzB/
	ed3HIlBtG/aigwqT+QtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyinX-0001Oq-6E; Mon, 03 Feb 2020 20:58:23 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyinR-0001LS-HF
 for linux-riscv@lists.infradead.org; Mon, 03 Feb 2020 20:58:20 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 10182E0004;
 Mon,  3 Feb 2020 20:57:55 +0000 (UTC)
Subject: Re: [PATCH bpf-next v2 6/9] riscv, bpf: provide RISC-V specific JIT
 image alloc/free
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
 <20191216091343.23260-7-bjorn.topel@gmail.com>
 <3f6d3495-efdf-e663-2a84-303fde947a1d@ghiti.fr>
 <CAJ+HfNgOrx1D-tSxXsoZsMxZtHX-Ksdeg8bZFFPRPGChup4oFg@mail.gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <881b35d6-23ce-fac3-23b8-cdd4d70fa106@ghiti.fr>
Date: Mon, 3 Feb 2020 15:57:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAJ+HfNgOrx1D-tSxXsoZsMxZtHX-Ksdeg8bZFFPRPGChup4oFg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_125817_711078_E70027A6 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, vincent.chen@sifive.com,
 Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org,
 bpf <bpf@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2/3/20 7:28 AM, Björn Töpel wrote:
> On Sun, 2 Feb 2020 at 14:37, Alex Ghiti <alex@ghiti.fr> wrote:
> [...]
>> I think it would be better to completely avoid this patch and the
>> definition of this
>> new zone by using the generic implementation if we had the patch
>> discussed here
>> regarding modules memory allocation (that in any case we need to fix
>> modules loading):
>>
>> https://lore.kernel.org/linux-riscv/d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr/T/#m2be30cb71dc9aa834a50d346961acee26158a238
>>
> This patch is already upstream. I agree that when the module
> allocation fix is upstream, the BPF image allocation can be folded
> into the module allocation. IOW, I wont send any page table dumper
> patch for BPF memory.


Too late then :) I'll remove this zone with the patch regarding module
allocation.


>
> But keep in mind that the RV BPF JIT relies on having the kernel text
> within the 32b range (as does modules)


Yep, same constraints as for modules ;)

Thanks,

Alex


>
> Cheers,
> Björn

