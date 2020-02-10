Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7724A156FA8
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Feb 2020 07:43:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
	Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K8tlk8R7qabPxVGdmPNv3TP5HSM1wZjaMQxj29hBN4o=; b=KNIrArLENE/wbgSMosqJ8FbvIC
	tOj6Zhjk4wpW1FijAhXNHmSu2OlpNBx9frTK/ACXch4ZguDXvL3OBrrSXMFyScvBiynf/UHFydSi+
	ut5lAYWem79LLlX337bkdE5t88XfPt1eTushqtaz/klKhWzb5soGEDIjN0epTCmckZ3tG2uXMOHks
	LIfDuewe+FwQC89hfzBAceRkxeS7PazEIIXmZbUiQdfioT6TnJuYEScxi903Hqv4RCnDmiRWN8PzA
	sjrM/EVBuaoDNCSNGOxXSPe0gRSvHJdW6K4lLhLI86QQtljVa5DQLIeHjcHiq+ldwT2LMQmvTKHAd
	jEJ5N7fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j12mj-0004Ny-Ul; Mon, 10 Feb 2020 06:43:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j12mh-0004Ns-6c
 for linux-riscv@bombadil.infradead.org; Mon, 10 Feb 2020 06:43:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=K8tlk8R7qabPxVGdmPNv3TP5HSM1wZjaMQxj29hBN4o=; b=MS7NAc2YBNRFswrihs56LRGm8t
 PBFm81kxq4d2vWy4lXldwf5xi/fYnm+4kUzx84+jJZojJNSs87xmXM8qZ4W2K/YsdOJPepHWjvnkQ
 3yiyXIEBBPf7Fa3wyz9Pfj5WJ/plAx5DeBzC6ESZmTs8OBItiCdWCOFduLZtW3mh096wQo7hcZBdU
 qNn5DB0kEcpPnbHQYq3Rx6FWNe1DBDhBeUM+q2I1BNLCypt4ebxlca+cIOvY6TSS6ZqrES4cBz+Gr
 qn9BQkCboB7KqxC4XKLG4PWz2HLb1V1TjzcjGUQ0/0ms38lGOanBBTZeTP1E+IT45tt9qZ+YFkgFr
 tVrDlI3g==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j12md-00057I-TK
 for linux-riscv@lists.infradead.org; Mon, 10 Feb 2020 06:43:04 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 5EC30240003;
 Mon, 10 Feb 2020 06:42:45 +0000 (UTC)
Subject: Re: [PATCH] riscv: force hart_lottery to put in .sdata section
To: Zong Li <zong.li@sifive.com>, paul.walmsley@sifive.com,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200204111947.52013-1-zong.li@sifive.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <c5cbea2f-eaad-19eb-ba38-03a71e0ab7c2@ghiti.fr>
Date: Mon, 10 Feb 2020 01:42:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200204111947.52013-1-zong.li@sifive.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Zong,

On 2/4/20 6:19 AM, Zong Li wrote:
> In PIC code model, the zero initialized data always be put in .bss
> section, so when building kernel as PIE, the hart_lottery won't present
> in small data section, and it causes more than one harts to get the
> lottery, because the main hart clears the content of .bss section
> immediately after it getting the lottery.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>   arch/riscv/kernel/setup.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index 22b671dbbcf1..45c63dc06360 100644
> --- a/arch/riscv/kernel/setup.c
> +++ b/arch/riscv/kernel/setup.c
> @@ -40,7 +40,7 @@ struct screen_info screen_info = {
>   #endif
>   
>   /* The lucky hart to first increment this variable will boot the other cores */
> -atomic_t hart_lottery;
> +atomic_t hart_lottery __section(.sdata);
>   unsigned long boot_cpu_hartid;
>   
>   void __init parse_dtb(void)
> 

Thanks for testing the relocatable patch in SMP and fixing this issue. 
It looks good to me too as I did not find any other variable being used 
before bss clearing so feel free to add:

Reviewed-by: Alexandre Ghiti <alex@ghiti.fr>

