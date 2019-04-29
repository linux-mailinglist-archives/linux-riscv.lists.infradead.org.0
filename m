Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8595CED68
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 01:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=kguMBTRj9O7IZJHlElGzso0hToQMj9I3+svzuMnXrV4=; b=N97OFBzKf/FL1mA+9w7vemZh+
	/2rSSwGo1xmJ3xJzhAWk5+yR12A35YncPxAeCqtx18oya/GjI+Jw9Fv0Pq2fkqHl9DRK1IOpoj7PU
	cQNz+Xju6EkcQTxwAgjAD+nUUV2jCxDqQ4cZvLTg9GrESSHzNKmNQrNB1F5r+KOc2RXjzn/NrhQGN
	uqqJgHZwjTq4zeoOmNhznVeaKQvz3L8pTtqzLYfx6FZtLsWK1hqpRfdIHLi5ebJ0NeDaizKoBDZsX
	ekBBEnZgbieun4gzDp9EnY6C3iUwRCDYQ0ePS2YZPm2kPuTpY3/LZBk5WbMmA37vjq/ca3JJjSqIO
	IPm2QMmeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLG2D-00041y-1J; Mon, 29 Apr 2019 23:50:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLG29-0003Nb-Au
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 23:50:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id e24so6107978pfi.12
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 16:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=iki8lEciOli5KOvhEgs9JNfHNGA2ZFukuxTBdMWWHqg=;
 b=Z9RbQk9f9/Px7IbWu4Gh/AbhBLH1/XY5qaP4iXWOCmDcvgzOpHbN9FfhX4JvspNEQJ
 Jx0GSeCf+B9lSir3UxYBQb3OOsHCNQQnirb4zuBR4E4gdALFi+3nR4MgVBiXrfWOVWRt
 TDe5iG2xuVMaaKSKVgatTMI1v03YB+Fg67QBZG4j2mbu4mPcAmDikXOOadBmqymfhDlK
 zFBlEHDkoUYhem00EIGOEKMQkwl0AWonW82q5zT/+GffjfXhSFYl6U7RdqM+NCOvRcXH
 WPgMrKCEGu1aR7Q5aDIttO8ku2+lVuXIYbHbeEBNBIqTXNHVQQkJxi1KnTECOZuRivTp
 f5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=iki8lEciOli5KOvhEgs9JNfHNGA2ZFukuxTBdMWWHqg=;
 b=ZTOl2NNE4MZyHZNQ7licJu1zAoNdZP8s5ZVfRTqwXqUoQovN0sc0DfCLsESBP5HKgX
 WP3/uBR6CMbMHuFTOzRbGQXCNG4lmmyeWgG+pNLQU4wTIybBjuEMGzNxk8yE1dqE7H7d
 DSIY/ej2Cmwx6doDJrDdX2CfmLF7pnMYWAC7v0MQq/mH6Bf4c0xAc9DJ57DgXUTe0pzl
 76VAU5wAbXzQT1+0JwNIoFnTl9rR3qxtzunbJO14Qbi0Xn6Z734GCFoz3LBUVNmwIp6J
 sZryLGJMIhVi4GBa7dZTsxppvXu4dmzoEOM2hseaxudSGmhoVgJdGRO21wyT10GNAF3H
 YX9Q==
X-Gm-Message-State: APjAAAWVGTt3P0Ax3e6L+nFzM2tm2D6tQg9D+9yCm+V/F8nmlV+oz0Ow
 wFsmTXrKKwQcPDUdKfxv3VeBcQ==
X-Google-Smtp-Source: APXvYqwe6A2MY53MJJ1uot3hhk0ZU6yNlSb8vhR9KPE/rerJcUMCruUKZf3B4asJaZ1rBqcFeWpckw==
X-Received: by 2002:a63:6fcf:: with SMTP id
 k198mr61685712pgc.158.1556581804682; 
 Mon, 29 Apr 2019 16:50:04 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id e13sm52032242pgb.37.2019.04.29.16.50.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 16:50:03 -0700 (PDT)
Date: Mon, 29 Apr 2019 16:50:03 -0700 (PDT)
X-Google-Original-Date: Mon, 29 Apr 2019 16:49:07 PDT (-0700)
Subject: Re: [PATCH v3 2/3] RISC-V: Implement nosmp commandline option.
In-Reply-To: <20190424000227.3085-3-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: atish.patra@wdc.com
Message-ID: <mhng-56c3b718-eda9-4f5b-8124-7dee869fde1d@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_165005_391142_8306EDF1 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: aou@eecs.berkeley.edu, dmitriy@oss-tech.org, anup@brainfault.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 johan@kernel.org, Christoph Hellwig <hch@infradead.org>, atish.patra@wdc.com,
 schwab@suse.de, linux-riscv@lists.infradead.org, tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 23 Apr 2019 17:02:26 PDT (-0700), atish.patra@wdc.com wrote:
> nosmp command line option sets max_cpus to zero. No secondary harts
> will boot if this is enabled. But present cpu mask will still point to
> all possible masks.
>
> Fix present cpu mask for nosmp usecase.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/kernel/smpboot.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> index eb533b5c2c8c..a8ad200581aa 100644
> --- a/arch/riscv/kernel/smpboot.c
> +++ b/arch/riscv/kernel/smpboot.c
> @@ -47,6 +47,17 @@ void __init smp_prepare_boot_cpu(void)
>
>  void __init smp_prepare_cpus(unsigned int max_cpus)
>  {
> +	int cpuid;
> +
> +	/* This covers non-smp usecase mandated by "nosmp" option */
> +	if (max_cpus == 0)
> +		return;
> +
> +	for_each_possible_cpu(cpuid) {
> +		if (cpuid == smp_processor_id())
> +			continue;
> +		set_cpu_present(cpuid, true);
> +	}
>  }
>
>  void __init setup_smp(void)
> @@ -74,7 +85,6 @@ void __init setup_smp(void)
>
>  		cpuid_to_hartid_map(cpuid) = hart;
>  		set_cpu_possible(cpuid, true);
> -		set_cpu_present(cpuid, true);
>  		cpuid++;
>  	}

Thanks.  I've taken all three of these into for-next.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
