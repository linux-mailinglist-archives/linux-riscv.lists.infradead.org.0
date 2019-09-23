Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B97BB55C
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 15:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0OCEH9gwGz0JFVU/SKa77D5WbJXIi3CIpoDsa69Dgb0=; b=B3WqNSDVCW7sF9
	3+9QyIA7tGkLIGAd2uRTAL+k3benTBtM28+ugBHRmnRTC1x3aERTXcsXX0hLylHJ8I3Htyp+t+/wN
	Jc84Dmy4/2bMMrU0NjhxzRuqxkyk5c2dfa4zzc/QxheIGIdTH4f31CvXHkE/t6hjWyUOH3nyVBgsc
	9oO27bD/ZtV/bxmMuETsuofiMCt9sKYUv2UZnTt1qrxXseiz0Xa403BEswSBw2gwmEant9e4knHvU
	FUAiO3C1GS8DqKuFbR2gl/Qy63dt1j6H2yi1KWtiycwynen64wbj2bOONQ0U68E/+jqKm6LHIRfyM
	dqaNqPU94vqRPJMmO8Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCOSx-0005WX-AS; Mon, 23 Sep 2019 13:33:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOSu-0005Vs-5x
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 13:33:21 +0000
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7605881DEC
 for <linux-riscv@lists.infradead.org>; Mon, 23 Sep 2019 13:33:18 +0000 (UTC)
Received: by mail-wr1-f72.google.com with SMTP id b6so4899199wrx.0
 for <linux-riscv@lists.infradead.org>; Mon, 23 Sep 2019 06:33:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GE7K8CVGK2heIgLytQmrMIe2pNB3wHn4Xngpgn9CRvo=;
 b=M6cYLMmpDJ4UqYG1WX327uNJNFzVuPp87A9zzasAP97cJcXxKz2XEUqKo417Sol/ms
 i8Jo0wgXdYfDSP0eL3AzZOvU8VsnN7IKTMcsT80hCwd1xBRgO6recoQT33J7xXSPduOa
 5wDcc+rsVwlnAgrylCvsG1s0ozdZwyGJ7NF1i5TTs4O8HjiP+NwoaSM0/0x/jQoM48Bj
 aNg/Z8XTBBC10nfROnlPzUV9jnUW/oWZDzWNBIXnVcDfAMtSHa5DnGFdWw5ppVBe1KBl
 TfWL/vPw/4qljryUqYEA6l2yjAzdmnBo3FJLU2LjWOvZtX/7zsvoMX1m1MSnICncHks8
 +xzQ==
X-Gm-Message-State: APjAAAXZhCmthAv0xajxrc4CjWrjm3y3LwKD6LMRV971cq4Zwk0JuzMR
 28LvNfsMOFTw+lbn1uPVv0aW0SrWs6iNOOAeAm6Le2HPz1m7YhvxCU39uOjIqw9hB+2UqQkvdCO
 4XKNtFrm6xzZWikhCCcJ9DUgw0AsQ
X-Received: by 2002:a5d:65c3:: with SMTP id e3mr20529804wrw.211.1569245597059; 
 Mon, 23 Sep 2019 06:33:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxn4cbY0hPCR2low1rLV+Gp6UtBZciARRAa8mBy7/FkikwZtI3kLUypi3t8SYdNoH1H62vBPw==
X-Received: by 2002:a5d:65c3:: with SMTP id e3mr20529781wrw.211.1569245596767; 
 Mon, 23 Sep 2019 06:33:16 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:9520:22e6:6416:5c36?
 ([2001:b07:6468:f312:9520:22e6:6416:5c36])
 by smtp.gmail.com with ESMTPSA id y186sm26462628wmd.26.2019.09.23.06.33.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 06:33:16 -0700 (PDT)
Subject: Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
To: Anup Patel <anup@brainfault.org>
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-12-anup.patel@wdc.com>
 <8c44ac8a-3fdc-b9dd-1815-06e86cb73047@redhat.com>
 <CAAhSdy1-1yxMnjzppmUBxtSOAuwWaPtNZwW+QH1O7LAnEVP8pg@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <45fc3ee5-0f68-4e94-cfb3-0727ca52628f@redhat.com>
Date: Mon, 23 Sep 2019 15:33:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy1-1yxMnjzppmUBxtSOAuwWaPtNZwW+QH1O7LAnEVP8pg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_063320_249197_841C421F 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 23/09/19 15:09, Anup Patel wrote:
>>> +#ifndef CONFIG_RISCV_ISA_C
>>> +                     "li %[tilen], 4\n"
>>> +#else
>>> +                     "li %[tilen], 2\n"
>>> +#endif
>>
>> Can you use an assembler directive to force using a non-compressed
>> format for ld and lw?  This would get rid of tilen, which is costing 6
>> bytes (if I did the RVC math right) in order to save two. :)
> 
> I tried looking for it but could not find any assembler directive
> to selectively turn-off instruction compression.

".option norvc"?

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
