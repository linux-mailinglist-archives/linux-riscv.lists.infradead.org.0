Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32CF13E1B0
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Jan 2020 17:51:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WX8RB1wfJCliH8/zi+tgub32ZBfKjuIQgKJ9j2z+hKk=; b=DePl/LKO4v+guA
	8i/mbLH9xDE/ipmSGPLvm7lfCf40wjt+UgOibEdAovjkDpeoR+JqUEsCwb4nfy73WRDDSMSgq8sxR
	LtrD69j6R6+jt2m/gZs387hF46A5HPjDdTBy2nSLp1BoOxR/qVHvbKGbvkgZReyEOPvFLhCCLuGRS
	OdrnnR+aThdjjJksUNBGgRCVWxxtCQIJ4ghimBFw4ZvCD6smszkqyFWa6kiD9XH8nZqWIgCsvwgSK
	5osbXka2a8lnzcInIXoXosESJXfmmZ52+QQPxVT4vAGM3hXe6oijtqhMrUeLaNgl+o4+bZIATuO8q
	ro2HITUp90I+gewSQz8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Mj-00071j-SD; Thu, 16 Jan 2020 16:51:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8MQ-0006oL-1g
 for linux-riscv@lists.infradead.org; Thu, 16 Jan 2020 16:51:19 +0000
Received: by mail-pg1-x542.google.com with SMTP id b137so10167674pga.6
 for <linux-riscv@lists.infradead.org>; Thu, 16 Jan 2020 08:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=WX8RB1wfJCliH8/zi+tgub32ZBfKjuIQgKJ9j2z+hKk=;
 b=kv/rnQJpRXl8xuYnke8mUPEG7MMS88JHDJvb4E6uV0XFinTRPPD5C/d39TE0W1yLGg
 IveHIwSKvWqF8GWIAVXys0ek01P0zlslB1NhEkYuOQTobMKrpWAalExl/JFK7yyU0Yq0
 RN4d7oM83AIzhO/LQ+k2eKOtqcDgfMqR5K2BBoTBgPPcCQKjQY1vZxVsvLeeVpRJOZmD
 eRQROKW+eN7NWuqRF8n1g54NyVDjBhvST3om4ni5PwBSIHk02pNmz2QDJ3oaBuELwJCe
 7fXGPGZ2gXBewewkWEIYT5M6hJVT30iUAhLwPdqGbI+xXXqAP3MBupENf9wLl5FFPuhq
 48fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=WX8RB1wfJCliH8/zi+tgub32ZBfKjuIQgKJ9j2z+hKk=;
 b=m8mU4WAlws11cTnSGBe2RX+UwdTmMNh1mQb9HHQ2ioCd+O/B8JD9JTN2EoKG535c/A
 3QJUN0nAh8/3nXUqWnr9Fn1DVaZ1zCGM3SlaZO2yFckLVhaE1teUjHgEAcCZvugD51dd
 7qmr8FC2+mf0aAChSPDjKt/c3IWxa5xiVeM+E0SlhGql1WCqasYMhc6RHmjrZqm6H7oA
 63p4wkEy3QMrobrP5wR9HofschvBK2GtnLZUwtuiztNv6zezOAELog+xoB5+5710ndTX
 ExYSEZqLnZTG46OiMBcnOYKtn9DES6ytIkT1gk7gIDfH6zxZ/ZGx+pTvx6Rzh0svnDhS
 uyug==
X-Gm-Message-State: APjAAAWnWq0qp/3go3cFHWf8PDsBvA6I1crQsFyruOY5uDCbUE+KugXw
 w9DYeqzdLOvF96mjwjAt167jOw==
X-Google-Smtp-Source: APXvYqy27Y/ZAUAQAnIzlxv1ajCi6HqFGtLCh8M57hfohNhgC3bsmthRFBrHGcYWEFQ5TfRZ98IBsQ==
X-Received: by 2002:a65:530d:: with SMTP id m13mr40368954pgq.351.1579193469245; 
 Thu, 16 Jan 2020 08:51:09 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id s1sm24561586pgv.87.2020.01.16.08.51.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 08:51:08 -0800 (PST)
Date: Thu, 16 Jan 2020 08:51:08 -0800 (PST)
X-Google-Original-Date: Thu, 16 Jan 2020 08:34:33 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v10 01/19] RISC-V: Export riscv_cpuid_to_hartid_mask() API
To: Anup Patel <Anup.Patel@wdc.com>
In-Reply-To: <20191223113443.68969-2-anup.patel@wdc.com>
References: <20191223113443.68969-2-anup.patel@wdc.com>
 <20191223113443.68969-1-anup.patel@wdc.com>
Message-ID: <mhng-81eb8962-4c58-4e5b-9ee1-0e6c0afb2c00@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085110_140235_1FAE674A 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>, aou@eecs.berkeley.edu,
 kvm@vger.kernel.org, rkrcmar@redhat.com, anup@brainfault.org,
 Anup Patel <Anup.Patel@wdc.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 graf@amazon.com, kvm-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, pbonzini@redhat.com,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Dec 2019 03:35:19 PST (-0800), Anup Patel wrote:
> The riscv_cpuid_to_hartid_mask() API should be exported to allow
> building KVM RISC-V as loadable module.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/kernel/smp.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index eb878abcaaf8..6fc7828d41e4 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -10,6 +10,7 @@
>  
>  #include <linux/cpu.h>
>  #include <linux/interrupt.h>
> +#include <linux/module.h>
>  #include <linux/profile.h>
>  #include <linux/smp.h>
>  #include <linux/sched.h>
> @@ -63,6 +64,7 @@ void riscv_cpuid_to_hartid_mask(const struct cpumask *in, struct cpumask *out)
>  	for_each_cpu(cpu, in)
>  		cpumask_set_cpu(cpuid_to_hartid_map(cpu), out);
>  }
> +EXPORT_SYMBOL_GPL(riscv_cpuid_to_hartid_mask);
>  
>  bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
>  {
> -- 
> 2.17.1

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

