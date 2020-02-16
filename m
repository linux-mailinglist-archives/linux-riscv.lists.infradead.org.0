Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0B716045F
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Feb 2020 15:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esdA/kFFjqubsj1lZxuW/qOwDTTAXGZUQRZsAidH4dY=; b=c5wlrEYAiLky8b
	W34uG/Hqmn9QD6/CP0vn9Xj997INl3mGgirHCbUJNzhssdyFC8tzRnWquknr/GeE2l5fo4FDVneDx
	BbQyLdnYaUlib/X/PJdGvm7vl4dhzbAdxaAVp7LrOMb8MX5WrKJ4L9JdsXxtGPqxsNuK9OjqyNToh
	4Q9kh/QcaF3G7o7gpmnE9TAztaz0yTK/xFjGts4ImkWoTvYAGt+vhBXTRDIjAzY9uAXuNqCh+pPt6
	rMhqPG2TjislC1odR4nYg6uVS85qwIna4A+43oJVuVn9xidj5REkWF5w5hO8uQiguhwfNrxp1qM8I
	Echag+GeP84ArbcONb9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3L8d-0006dZ-TF; Sun, 16 Feb 2020 14:43:15 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3L8b-0006dO-Sd
 for linux-riscv@bombadil.infradead.org; Sun, 16 Feb 2020 14:43:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=esdA/kFFjqubsj1lZxuW/qOwDTTAXGZUQRZsAidH4dY=; b=C4Hp3Njtuu9HQzT8Hf6z+jquKT
 LDBKIaiUxDhqUvx8t+1EY+KErASuA/lAtR6Ax0JBEj2OwsoMq3EJhSCGIdO+iTlkHp0fnfOuIuRWF
 +KSyRRTnNRSUPdjT1AJc/bgC9+5NEXf6m7eI/IjWNO5eEzN+z7SlN2ue9VXzMXUYmZRdoR61gkaxB
 0avAAMcCJ+qa77nbR1dDRRwXLvG6+Eh6LaleucLClXc6G3HDiaCg24GZVEXVG+6x3ZeCYrsrfnKnT
 Fpp74J/J7cfW+Xy2/nGsiE06TNWNFPkXwkTC54o0ZJXkqVNvV9Qb+w0Snz8bqfN5Db400xCvkaUsG
 aMLR1Oig==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3L8V-000857-Nz
 for linux-riscv@lists.infradead.org; Sun, 16 Feb 2020 14:43:12 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id DFF67C0007;
 Sun, 16 Feb 2020 14:42:17 +0000 (UTC)
Subject: Re: [PATCH v2 2/3] riscv: End kernel region search in setup_bootmem
 earlier
To: Jan Kiszka <jan.kiszka@web.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
References: <cover.1581767384.git.jan.kiszka@web.de>
 <b11898805c2f9f01b10867a05701aa0fafeaa886.1581767384.git.jan.kiszka@web.de>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <8f0ddf1f-1ea9-8bde-76a0-ba60788c2a2d@ghiti.fr>
Date: Sun, 16 Feb 2020 09:42:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <b11898805c2f9f01b10867a05701aa0fafeaa886.1581767384.git.jan.kiszka@web.de>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_144308_421771_716CB831 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Jan,

On 2/15/20 6:49 AM, Jan Kiszka wrote:
> From: Jan Kiszka <jan.kiszka@siemens.com>
> 
> No need to look further when that single region is found.
> 
> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> =2D--
>   arch/riscv/mm/init.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index aec39a56d6cf..a774547e9021 100644
> =2D-- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -160,6 +160,8 @@ void __init setup_bootmem(void)
>   			if (reg->base + mem_size < end)
>   				memblock_remove(reg->base + mem_size,
>   						end - reg->base - mem_size);
> +
> +			break;
>   		}
>   	}
>   	BUG_ON(mem_size =3D=3D 0);
> =2D-
> 2.16.4
> 
> 

I was looking at the test above that determines if the current memblock 
contains the kernel:

if (reg->base <= vmlinux_end && vmlinux_end <= end)

Shouldn't it be:

if (reg->base <= vmlinux_start && vmlinux_end <= end)

?

Otherwise, we can indeed stop as soon as we found the region containing 
the kernel, so feel free to add:

Reviewed-by: Alexandre Ghiti <alex@ghiti.fr>

Thanks,

Alex

