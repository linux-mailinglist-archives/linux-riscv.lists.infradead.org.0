Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2976FEDF0
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 02:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=8LGiVHl2m3Yq9xoqQ7rnG7mLaisSchA8on+Yw57ujI8=; b=KRg0mUEEu82uwF8gGqzaOwIuQ
	G90j2xWVDEBtjTa1cW+HelykexwE7gqtBqLhLV/Lk8ZfF6M1oelcNGKuAl4LbqJLNpzIVIG7dnBEb
	D2uSA1hvc2Z782NUoFZlLVj1xsfvi42I+fXkWzSo1clLZUNoGthz3i3ms/vZUGww8qRhMjhKgRGks
	HX2j+g0lAefGC3x4mY41GqZaDHUDYzFffJr/3oAJGLAzC748CNO4/a1gPRsXeFrOSuYheBGth/6Za
	5ATH5Wb2AEgomwrCKLNgJdamLAqtnu66OK+YP8IpKc7MyI319zR1CiRVJlEoa1hHiOZ0QyDrFf1or
	JX0f/UV3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLGlV-0004K2-TS; Tue, 30 Apr 2019 00:36:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLGlS-0004JU-1v
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 00:36:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id 188so6163434pfd.8
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 17:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=GbaCh6NhvaphvajOZaGIcMKIlJS94Qzf/VlSIykaLPU=;
 b=hMN6CoeYmgoCw44mrL758sSSkEbr6V6KKiWzQhocmqfTxNVGtMqcnR/RW5Ab++FnNa
 4liF+DSBZ95xJ8oIbBfRb1mHSNy+XsdXWvsLnmD/NMVU+tKIWb31EvHvtFucIoGnOwJ0
 4Cc+2gt9S95VOhgUgt4FG7VkKwY2DS6D+vwpVl7+oZfaDEjLBbWkwqncS0PtIQPj5r+w
 iGr0rd6ssbA7mbpfLhR4E+hTs15pcCklhXkjSQOMwf84TrhK9EE+WTwbLp/ohY8zXhZq
 YyFdKFByYNdmsx2ONAqhaoo6/bhfOvXj646nxuk4rgiEnmGJKeWG1AnQx5udDWyv58IR
 yOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=GbaCh6NhvaphvajOZaGIcMKIlJS94Qzf/VlSIykaLPU=;
 b=UBsZ04QuZR/IrBGR179GuEGuFhBiqCaTOcgsriL0FkUN6rOjKfzYSnuigkfc0qEh3m
 rejOJ1lsg3bezk8Z/FJlS54fJU9cgEg9I8y/nbPq5pfZYpOWMssgFcTblrefDzPLzjTq
 dAZsg/37dUh24avu57+5wATK2gK8mTIDqmKHgj7CG2MzwM13WgrHAGHv9NjSrEOeVzRX
 RrNymibuec7co6uYQ8UZhID1ylc99aNEI63ggKuaz/lHTK94O9DPiaAoFnIwwyiJejBF
 gxpsGlNq9LgMxV8L6VEz5b60veB3Pb4zuww+L8iS2tEN9C7tT896KVyB15MAagHF6OBX
 FG1A==
X-Gm-Message-State: APjAAAWgAGMrx3MV2fCUN9+l0xOcbPCsali0z4oK8+F3A7AQirx7Iama
 Be3VJBuPab6vkme7AmAKHdehSg==
X-Google-Smtp-Source: APXvYqyjC+rvDd8hwITIhvgqtLGWf5npvZ8mvtRVBt1bZ8i9oVfiJjH+CuEapJKP7J0YkNx7T58e8w==
X-Received: by 2002:a63:b53:: with SMTP id a19mr19302204pgl.216.1556584613110; 
 Mon, 29 Apr 2019 17:36:53 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id j5sm47436174pfe.15.2019.04.29.17.36.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 17:36:51 -0700 (PDT)
Date: Mon, 29 Apr 2019 17:36:51 -0700 (PDT)
X-Google-Original-Date: Mon, 29 Apr 2019 16:52:40 PDT (-0700)
Subject: Re: [PATCH v3 1/3] RISC-V: Add RISC-V specific arch_match_cpu_phys_id
In-Reply-To: <20190424062100.GB3902@infradead.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <mhng-42e98065-6d8f-455c-97d9-0a2dfccc731a@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_173654_126272_F839737C 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 johan@kernel.org, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, atish.patra@wdc.com,
 Paul Walmsley <paul.walmsley@sifive.com>, schwab@suse.de,
 linux-riscv@lists.infradead.org, tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 23 Apr 2019 23:21:00 PDT (-0700), Christoph Hellwig wrote:
>>  }
>> +
>> +bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
>> +{
>> +	return phys_id == cpuid_to_hartid_map(cpu);
>> +}
>>  /* Unsupported */
>
> Please keep an empty line after function bodys.
>
> Otherwise looks good:
>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Oh, sorry, I missed this -- I just fixed up the patch and added your tag.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
