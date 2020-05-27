Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3751E3410
	for <lists+linux-riscv@lfdr.de>; Wed, 27 May 2020 02:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=b3E7kBOAM2ew0xZ38kPv10y9VtHtStBNAPoFOCwdwzA=; b=MML9/d1sPzwimE
	pdDA9DGZmO1mz5xqtKodMlKlG1bYAx4qqodUN++AY4y+bJZWXp4BscnNQlI4+JheuEI0hfUsQrFLf
	7ES4kZ5XeWxgpfRjUlwqjgQqTPAN2iywNz+cv3SOshTelnogLnIFiRr1VBZGrJ+P49SsVr04d9OUT
	GGpTJcvStun0lkrEyiM8j3FqceYzGo4p6WG5No/SzlZ8KVkQqoFwpX95+HMlqGSM2ae5FUYoItaIx
	6aIpny2yRpHSWUYgcix/sRufiKPTwmFiA4O/nQMAB6uTQMgbVjjP026Y6rsjlOu6HN1SjZUSQ8RAn
	fb997p6pDr+ni09ffDkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdjzo-0000ZU-6a; Wed, 27 May 2020 00:32:36 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdjzk-0000ZA-Cf
 for linux-riscv@lists.infradead.org; Wed, 27 May 2020 00:32:34 +0000
Received: by mail-pg1-x542.google.com with SMTP id w20so5863404pga.6
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 17:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=b3E7kBOAM2ew0xZ38kPv10y9VtHtStBNAPoFOCwdwzA=;
 b=sIAKCvc0u5PTCAIepNUBqhcRsAcLBfmDxstjdS7VwkNKBZmUZ/E/X+L4tZTb4qX4xm
 3Z5lRnZk7EVb9clRn8reNvvO0h1/HVu3xYL7LIMe37sTYQcVm3s0oCcOz2Q79T3f6iQ7
 bA/CUUmuwqKc58s6BnXfGlwXQu4ABI6KYefld9YLsaL+xj0KvVHAX58vlT0XSV3t1FoB
 mrNOy3QSZjkJP7SoFA5FToBJPK8dsa/xNpI/BCcGlfaQcs2yUt6PQ/oLDCSOI6KOnoT8
 n8SQ16PWLOqtOTGi/h4fT1zexP+hvWlItmdC31or1jVbQhS8EJaVW5Ez4NYm/G8eGPxU
 Fs1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=b3E7kBOAM2ew0xZ38kPv10y9VtHtStBNAPoFOCwdwzA=;
 b=UUU/tkqjHEzrWiOtWiwP+urETc70xmMX9PEEqnydfzQzaapdsqF+OYeDovpksvqEQC
 yzOgHTXjGjaP76A8GEJzN/qxdMTJYN7OG4sXDRyDVcawKvtGPL55T9O2Re0XINvQp4o/
 uhvLMEKiKZ1WxZwX5Xpy2F7jU4mE7Rhkt6faiw31Uk7NUu88YI/CGcO7oAEJE4OXt8wC
 MfCEjK38G0/R+Wi5feRqtuQjkR+iD27Xwf7IkXY2Ip3LxBe54HxE1q3q/UlTsNhrBJEb
 iDAHGUfPWurIG9LI1Mvs+QDXSSgb6oy5KmjG3eEPYHpLKNA5asqA+BmbEP8hmiUA/KXI
 u7vg==
X-Gm-Message-State: AOAM532LVLi1HfayS9yeDLDJBPhdUQKQvNJ4zXJ/stZYJ3Uh1tY32wEa
 StwaM6I62uYHmApCRVYoc4wnVA==
X-Google-Smtp-Source: ABdhPJyLyZQqJTK/aWjlOUiPRd4F92ADMhZZVfoxKIVjzzI0ER808j2pZAQdP72+g4iGhVujHr1P9g==
X-Received: by 2002:a63:5763:: with SMTP id h35mr1353749pgm.98.1590539551005; 
 Tue, 26 May 2020 17:32:31 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id b23sm616219pgs.33.2020.05.26.17.32.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 17:32:30 -0700 (PDT)
Date: Tue, 26 May 2020 17:32:30 -0700 (PDT)
X-Google-Original-Date: Tue, 26 May 2020 17:32:27 PDT (-0700)
Subject: Re: [PATCH 5/5] dt-bindings: timer: Add CLINT bindings
In-Reply-To: <c0e9e625-daf8-b72f-2237-06018ff5d8a0@gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: seanga2@gmail.com
Message-ID: <mhng-0995a264-b39c-4790-9aa5-b8c598b43ffd@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_173232_479067_05DB2975 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <Damien.LeMoal@wdc.com>,
 Anup Patel <Anup.Patel@wdc.com>, anup@brainfault.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, robh+dt@kernel.org,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 23:29:36 PDT (-0700), seanga2@gmail.com wrote:
> On 5/22/20 1:54 AM, Anup Patel wrote:
>> On Fri, May 22, 2020 at 1:35 AM Sean Anderson <seanga2@gmail.com> wrote:
>>>
>>> On 5/21/20 9:45 AM, Anup Patel wrote:
>>>> +Required properties:
>>>> +- compatible : "sifive,clint-1.0.0" and a string identifying the actual
>>>> +  detailed implementation in case that specific bugs need to be worked around.
>>>
>>> Should the "riscv,clint0" compatible string be documented here? This
>> 
>> Yes, I forgot to add this compatible string. I will add in v2.
>> 
>>> peripheral is not really specific to sifive, as it is present in most
>>> rocket-chip cores.
>> 
>> I agree that CLINT is present in a lot of non-SiFive RISC-V SOCs and
>> FPGAs but this IP is only documented as part of SiFive FU540 SOC.
>> (Refer, https://static.dev.sifive.com/FU540-C000-v1.0.pdf)
>> 
>> The RISC-V foundation should host the CLINT spec independently
>> under https://github.com/riscv and make CLINT spec totally open.
>> 
>> For now, I have documented it just like PLIC DT bindings found at:
>> Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.txt
>
> The PLIC seems to have its own RISC-V-sponsored documentation [1] which
> was split off from the older privileged specs. By your logic above,
> should it be renamed to riscv,plic0.txt (with a corresponding change in
> the documented compatible strings)?
>
> [1] https://github.com/riscv/riscv-plic-spec

Let's propose tagging that PLIC spec as v1.0.0 in the platform spec group, but
I don't see a reason why that wouldn't be viable.  Assuming that's all OK, we
can start calling this a RISC-V PLIC (in addition to a SiFive PLIC, as they'll
be compatible).

>> 
>> If RISC-V maintainers agree then I will document it as "RISC-V CLINT".
>> 
>> @Palmer ?? @Paul ??

The CLINT is a SiFive spec.  It has open source RTL so it's been implemented in
other designs, but it's not a RISC-V spec.  The CLIC, which is a superset of
the CLINT, is a RISC-V spec.  IIRC it's not finished yet (it's the fast
interrupts task group), but presumably we should have a "riscv,clic-2.0.0" (or
whatever it ends up being called) compat string to go along with the
specification.

>> Regards,
>> Anup
>> 
>
> --Sean

