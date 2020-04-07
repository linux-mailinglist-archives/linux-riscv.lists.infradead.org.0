Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCFF1A060F
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 07:08:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:To:Subject:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kR5TWREsyqUXcW4PBPOrV/S1MaN10Jvq79eFy/DhZNk=; b=LfFG1CtrLsrEN0bb275cuD3LQO
	zZbZ3M3pVH6GMVe5qHTNtzpFbXtGzpHqmmnsfFyXcMqmTmLDb+1oUbAbITRuAMEzdR/UPvd1yalKc
	A+avm0L0KFo8v7LLCd1/Iq08kSC2V1J4YrqS7dkhd6LR8dYU+b8ir4HR0blIltEql+p4hr5ySN01N
	oLdAvsrUqB0X3TnEtyhAjOQv0pqNaBPbDbi3PSKCXtCH9xY9QDTBFSNnl9iWgE2XNX5MeuOIzEkda
	YTTnJcFx5S3qheVa8O+opRCkJ8VyVBmc4lGrxq7qRzXDPyhNzIBPaXoxErCqF0RkiWxO1/Q3LDfNE
	HjNr4low==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgTH-00066e-6N; Tue, 07 Apr 2020 05:08:23 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgTD-00065r-NJ
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 05:08:21 +0000
X-Originating-IP: 2.7.45.25
Received: from [192.168.1.101] (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3A5D660004;
 Tue,  7 Apr 2020 05:08:14 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH RFC 1/8] riscv/kaslr: add interface to get kaslr offset
To: Zong Li <zong.li@sifive.com>, palmer@dabbelt.com,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1584352425.git.zong.li@sifive.com>
 <cf8585177e6798095b1af02f28dad5a3271a761e.1584352425.git.zong.li@sifive.com>
Message-ID: <d6201d21-9631-dd22-2ff1-af7520086c32@ghiti.fr>
Date: Tue, 7 Apr 2020 01:08:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <cf8585177e6798095b1af02f28dad5a3271a761e.1584352425.git.zong.li@sifive.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_220819_897241_EB9DCCB4 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 3/24/20 3:30 AM, Zong Li wrote:
> Add interface to get the random offset.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>   arch/riscv/include/asm/page.h | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
> index 92848e172a40..e2c2020f0a8d 100644
> --- a/arch/riscv/include/asm/page.h
> +++ b/arch/riscv/include/asm/page.h
> @@ -101,6 +101,11 @@ extern unsigned long kernel_virt_addr;
>   extern unsigned long max_low_pfn;
>   extern unsigned long min_low_pfn;
>   
> +static inline unsigned long get_kaslr_offset(void)
> +{
> +	return kernel_virt_addr - PAGE_OFFSET;
> +}
> +
>   #define __pa_to_va_nodebug(x)	((void *)((unsigned long) (x) + va_pa_offset))
>   #define __va_to_pa_nodebug(x)	((unsigned long)(x) - va_pa_offset)
>   
> 

No problem for this one:

Reviewed-by: Alexandre Ghiti <alex@ghiti.fr>

Thanks,

Alex

