Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68037A5D7
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 12:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssVY5ZGlpGGkiS29FCNldA4FnCSTwk48SzNB2tILnLg=; b=T+ZMrTm01UQAiW
	hfnwJ4B+ErK6823Zj9lJ7JO04n18VGVEG/sK8Zo40PVXYHi/z6aq60hrNB5IAWEmxyWWaClL4I0hs
	oLT08YPygM896S87HfHYThRoDwPRFB5udFH27cJtqXyknGTJK2h7z5Uq+3r1FV8cH+KJb+IwLxp11
	wHyiUnARXrlX3kTP4an1PHq6awUvzW7BsfDKoUNqYMl6qfvAukTjCRgVj2kFLEeFiyVEVXdaH8tkD
	jgZvu8oUas+Pa9MYd1sr+hwGUmoAxYCltD64jtiXK29bjpB4Qo2mfFlMzNvVOk97Gl0a5js3pnE16
	I8E6Al4VxbjpQZVZATcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPBw-0005DG-J8; Tue, 30 Jul 2019 10:17:12 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPBm-0005C1-BZ
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 10:17:04 +0000
Received: by mail-wr1-f65.google.com with SMTP id n4so65199893wrs.3
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 03:17:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0BfXKRiEVxvU8bBbaJFcml0F4XwqkulSy5LoM8k5vnU=;
 b=mzkdxURrCMy3iZw3UG4Vaa2B0q/hRsLAjDOloWDsHz2eMftljz/srftBwS2kg3RBpb
 yOOMleoqf3ktj9rIa3GU5vER9R5wnvHaZEaw1Fs4FoEGAAlAD16L5mvtcJ8Kix+oH6xK
 q4QK4oi1TamjKBgqxP/GcAqtzuoAPeJZ5Mkau+3WWHwq+pXDmi3Xcwv1MDJmvZFbmcFX
 Lbw3+jvQOTS+pVRjdhJM/qXU1W+ApTQvXt0hEqJbdNYT6HcUqV8Nm8dNCLh/yzA8PVce
 TE8/M3HGlmg76UykH5pMtw1Y1euCf9633+96rxFg8OWhULCBjpgGgTBho3qjKl76oiTl
 wEIg==
X-Gm-Message-State: APjAAAWXjAXoulQYDOxaM1YDQa0ytwGNVB1Ywq3THwJE+EQx2NKttXFw
 y2y4H7JuHpdMMVzc/CVMBSt4eg==
X-Google-Smtp-Source: APXvYqy6/dowCLGeT9RriCZ015qAZZF2PPTjzlMgI9dPdoZanSSBKVmGsIjx7EURe6YAtK3Npnanuw==
X-Received: by 2002:a5d:4041:: with SMTP id w1mr115756381wrp.199.1564481819511; 
 Tue, 30 Jul 2019 03:16:59 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id s15sm46966792wrw.21.2019.07.30.03.16.58
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 03:16:58 -0700 (PDT)
Subject: Re: [RFC PATCH 04/16] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
From: Paolo Bonzini <pbonzini@redhat.com>
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-5-anup.patel@wdc.com>
 <ade614ae-fcfe-35f2-0519-1df71d035bcd@redhat.com>
Message-ID: <2de10efc-56f8-ff47-ed69-7e471a099c80@redhat.com>
Date: Tue, 30 Jul 2019 12:16:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ade614ae-fcfe-35f2-0519-1df71d035bcd@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_031702_789266_3705A1CC 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 30/07/19 10:48, Paolo Bonzini wrote:
> On 29/07/19 13:56, Anup Patel wrote:
>> +	cntx->hstatus |= HSTATUS_SP2V;
>> +	cntx->hstatus |= HSTATUS_SP2P;
> IIUC, cntx->hstatus's SP2P bit contains the guest's sstatus.SPP bit?

Nevermind, that was also a bit confused.  The guest's sstatus.SPP is in
vsstatus.  The pseudocode for V-mode switch is

SRET:
  V = hstatus.SPV (1)
  MODE = sstatus.SPP
  hstatus.SPV = hstatus.SP2V
  sstatus.SPP = hstatus.SP2P
  hstatus.SP2V = 0
  hstatus.SP2P = 0
  ...

trap:
  hstatus.SP2V = hstatus.SPV
  hstatus.SP2P = sstatus.SPP
  hstatus.SPV = V (1)
  sstatus.SPP = MODE
  V = 0
  MODE = 1

so:

1) indeed we need SP2V=SPV=1 when entering guest mode

2) sstatus.SPP contains the guest mode

3) SP2P doesn't really matter for KVM since it never goes to VS-mode
from an interrupt handler, so if my reasoning is correct I'd leave it
clear, but I guess it's up to you whether to set it or not.

Paolo

> I suggest adding a comment here, and again providing a ONE_REG interface
> to sstatus so that the ABI is final before RISC-V KVM is merged.
> 
> What happens if the guest executes SRET?  Is that EXC_SYSCALL in hedeleg?
> 
> (BTW the name of SP2V and SP2P is horrible, I think HPV/HPP or HSPV/HSPP
> would have been clearer, but that's not your fault).


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
