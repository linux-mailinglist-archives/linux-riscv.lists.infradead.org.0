Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98E27A4B4
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 11:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrew0PK3WTwZEs/r+dfOzuXStW+I3eTMo03DBRDjUVo=; b=ib7C1hgAilJV1J
	RtkanGgAai4TwRnU2af3LPuz03R+/wfTJh/Ur0erRIorfN7iFQsAWAmEW4Zqrpql9Kd2etXVT0J/x
	Ezs4b3l6ZsK7dGEww46LtLQ37tiR5MptqFt/vZ1JE5XObDdyEcewL7/O1bj+VuP+Uka/SqkBdCIew
	tJ/hKzh0ftkgfIlgXvjSqmkaefWflknfNTFTQcNhNrqMZCKdB07ceODduCyvD8LVrCuKJGcQF2wwm
	EMzusQUNNe+rHaLruOSsYBQKNEH3QDSGf9thQkcosQ3Tvak+Bk+NeObGQfF2eXeEBFG1UPkRwEKIb
	CUxtavptfWtdqy3+TFUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOau-00014o-Qa; Tue, 30 Jul 2019 09:38:56 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOY1-0007Fb-SZ
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 09:35:59 +0000
Received: by mail-wr1-f65.google.com with SMTP id n4so65060182wrs.3
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 02:35:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LfBe8BIZguRGaVcqxBIUd21ri7wgmIbA7EXh3G0N3Hw=;
 b=PsFb/QDSoWBHcHFjp7/LHXBJQNcrqRJ5XjCz2Zs9jucU69jfz0pBbA7Sn7o+EzcAXu
 nSSy6CBsI7ubKSTcqDFkQIcOoUJJwkAjaWpsJhaKHn3uOU6aRcmZ8FdXaVTBV+Jm1W60
 fHNXXJBmbZBqKvX2o9cjbkyirKJNC7DkJbyslhGmexhpsSqrnpVr+BZEJaSiftepWNL7
 MaGuOk9oAvCOhSNRSuymqvMogwiuRYlzMZkejOw0Vff6LpbPhSCStnF8Dx96rnnkQfNy
 gFKwNh9SymJlv9T2eF/MgOaTtps0SpGsC+zANxin2ePGuh0lZBSNqD4B2Ea8yI5HKV1B
 wfXQ==
X-Gm-Message-State: APjAAAUpDwloH2utPHw8T1aVrBRmwYxTV5l/ocGbQDxXTkCAkoc1gQmZ
 Si4F/pa31R5JrAuis1wengVoeg==
X-Google-Smtp-Source: APXvYqwq3Hft9cpeFWfJQOdIrZK1BvEf6TQWeB6zhzE98jxFZtCFfEZfO6QPRJKZp8CB+tTOovDs0w==
X-Received: by 2002:a5d:4f01:: with SMTP id c1mr45610035wru.43.1564479356485; 
 Tue, 30 Jul 2019 02:35:56 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id v204sm67712311wma.20.2019.07.30.02.35.55
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 02:35:55 -0700 (PDT)
Subject: Re: [RFC PATCH 06/16] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
From: Paolo Bonzini <pbonzini@redhat.com>
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-7-anup.patel@wdc.com>
 <3caa5b31-f5ed-98cd-2bdf-88d8cb837919@redhat.com>
Message-ID: <536673cd-3b84-4e56-6042-de73a536653f@redhat.com>
Date: Tue, 30 Jul 2019 11:35:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3caa5b31-f5ed-98cd-2bdf-88d8cb837919@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_023558_153588_EBB8C083 
X-CRM114-Status: GOOD (  10.57  )
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

On 30/07/19 10:43, Paolo Bonzini wrote:
> On 29/07/19 13:56, Anup Patel wrote:
>> The PC register represents program counter whereas the MODE
>> register represent VCPU privilege mode (i.e. S/U-mode).
>>
> Is there any reason to include this pseudo-register instead of allowing
> SSTATUS access directly in this patch (and perhaps also SEPC)?

Nevermind, I was confused - the current MODE is indeed not accessible as
a "real" CSR in RISC-V.

Still, I would prefer all the VS CSRs to be accessible via the get/set
reg ioctls.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
