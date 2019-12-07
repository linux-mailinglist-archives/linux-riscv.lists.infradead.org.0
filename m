Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B73115A81
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Dec 2019 02:08:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:In-Reply-To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=jgPnL+5CfrvgeIvrxi5m1URbPq9UfCHRkF3knFWgGMo=; b=lfM4zpwYYxamiO
	iULaUpXKV/3dKElySxXMKyPM8siz8w2slljyTHj8iDB5yoVigWkBDgZhg9T+hkkzu1epJMywf5O8P
	cnJz0t0jv2lp6XSzxqXlCimYPdP312n6HKzYC71i7dczA1w85rTmtYaMwt8mar0Ai8pRRTklIEQbl
	JW+/yqEIH8ZGfCsgj5+5997bZ9igHzc+cO15aIS5+2r5w48SUwBUgAO+3VtKyMa4Ky1H1UH6dFYzt
	olzfCa+etwqfJiz8AAz/9OnU42Jrbvw89Zv+LycaMkhBPKJlkPT8cwEB4tyXApRPKdhOGHFWgA+GT
	IMqO6bkjYTcHBgvtzPJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idOZb-0007Q0-1j; Sat, 07 Dec 2019 01:07:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idOZY-0007PF-Fa
 for linux-riscv@lists.infradead.org; Sat, 07 Dec 2019 01:07:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id b1so4156946pgq.10
 for <linux-riscv@lists.infradead.org>; Fri, 06 Dec 2019 17:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=jgPnL+5CfrvgeIvrxi5m1URbPq9UfCHRkF3knFWgGMo=;
 b=vnGHB43imTN0QjS6hkVorlkKBz9FeRi7coqQYKVSZrNzu/moiA3L0lN/rlICiyRZHJ
 Mh53ovWyz5PC6CNMvZVO7WD6S1sTZ6O5LGg+ugmfR6s7ghr/zccdDSRcdHvZVCHtN7vk
 +MzaGgY460pFTYKZdZiU7yd9ELl1QotycSPLtwCk/MTZObu2SBttSveckWvIQRTPRJDb
 VYkI+7gPM5D0vkj3UthTfXLDDaaf2wdIiaP37tRn3NR00CjhJJIC0ncgx/AYpOOCXfST
 dbTRMxmf0dzFCZwJ4u5YxSgKZvnIl2uYwBkXhuvQHoEXnEj9IYeGoFnA8p/d1a5RZMQi
 KScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=jgPnL+5CfrvgeIvrxi5m1URbPq9UfCHRkF3knFWgGMo=;
 b=bAdU83Ie9V3GhEok9Llug47Q9HFcwjJOBbVqLS8Keo098Vx/TSo4Lhdol8qECZ7LyG
 esvm1oIxkwT4Mb171qOf98whHbQktyLSyAFAo1JJmFAolM0KPVVhocF/wUng7/wWOjpW
 hQdMrCRnRRVYAJ9mqAjHw6/kjVGuCi/QnxsFem0Fwq4vfdnw3uHqVcxIxXXF2ftQqvwQ
 Lyxc4py21NXw4h8e6UkDdMENknpHAfReB0Ljod1AxpQcYhTdBwtJx7gzdISF37ipr5br
 ZfP2ojozIqx/PSTw/mAR2fkZWqF3HYOfJzRuESDFFNDR3ZifagGP7W+JHHo29TgHGmD8
 W/1A==
X-Gm-Message-State: APjAAAVt9uzc88M3Vk+9Dh8fsX4Ah/CbEZrb9/1Tz70XmGtjlqxJtGtP
 tvsOs+Ka5SlbQhWGDDtkZrELEw==
X-Google-Smtp-Source: APXvYqw+i60gFlnrvD0Dor+Sp0d2gAyk8B4gXSdQsjoxvzXIiXKLyW9wvw9NoSdBgAup/UtS8uprIg==
X-Received: by 2002:a62:be12:: with SMTP id l18mr10004721pff.206.1575680865151; 
 Fri, 06 Dec 2019 17:07:45 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id y128sm17328385pfg.17.2019.12.06.17.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 17:07:44 -0800 (PST)
Date: Fri, 06 Dec 2019 17:07:44 -0800 (PST)
X-Google-Original-Date: Fri, 06 Dec 2019 16:33:00 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: RE: [PATCH v3 5/6] gpio: sifive: Add GPIO driver for SiFive SoCs
In-Reply-To: <208a63e8819b84f9dc03f270f2606294@www.loen.fr>
To: maz@kernel.org
Message-ID: <mhng-be0f81d1-78d1-4e9c-8dae-1344635fbbb7@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_170748_544981_6B63FCBE 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 jason@lakedaemon.net, Atish Patra <Atish.Patra@wdc.com>,
 sachin.ghadi@sifive.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, yash.shah@sifive.com,
 robh+dt@kernel.org, sagar.kadam@sifive.com, linux-gpio@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 bmeng.cn@gmail.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 29 Nov 2019 01:12:10 PST (-0800), maz@kernel.org wrote:
> On 2019-11-29 06:27, Yash Shah wrote:
>>> -----Original Message-----
>>> From: Linus Walleij <linus.walleij@linaro.org>
>>> Sent: 28 November 2019 17:50
>>> To: Yash Shah <yash.shah@sifive.com>
>>> Cc: bgolaszewski@baylibre.com; robh+dt@kernel.org;
>>> mark.rutland@arm.com; palmer@dabbelt.com; Paul Walmsley ( Sifive)
>>> <paul.walmsley@sifive.com>; aou@eecs.berkeley.edu;
>>> tglx@linutronix.de;
>>> jason@lakedaemon.net; maz@kernel.org; bmeng.cn@gmail.com;
>>> atish.patra@wdc.com; Sagar Kadam <sagar.kadam@sifive.com>; linux-
>>> gpio@vger.kernel.org; devicetree@vger.kernel.org; linux-
>>> riscv@lists.infradead.org; linux-kernel@vger.kernel.org; Sachin
>>> Ghadi
>>> <sachin.ghadi@sifive.com>
>>> Subject: Re: [PATCH v3 5/6] gpio: sifive: Add GPIO driver for SiFive
>>> SoCs
>>>
>>> On Mon, Nov 25, 2019 at 6:58 AM Yash Shah <yash.shah@sifive.com>
>>> wrote:
>>>
>>> > Adds the GPIO driver for SiFive RISC-V SoCs.
>>> >
>>> > Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
>>> > [Atish: Various fixes and code cleanup]
>>> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
>>> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
>>>
>>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>>
>>> I suppose Marc will merge all patches into the irqchip tree as they
>>> are logically
>>> dependent? If you want the GPIO bindings and this driver directly
>>> merged
>>> (no deps) then I can do that as well.
>>
>> Yes, the GPIO driver have logical dependency on irqchip patches. It
>> is best if Marc merges all the patches into the irqchip tree.
>>
>> @Marc Zyngier, Are you going to merge all the patches into the
>> irqchip tree?
>
> I'm happy to pick this up, but that's definitely 5.6 material as
> I stopped collecting new 5.5 features a couple of weeks ago.

Thanks!

