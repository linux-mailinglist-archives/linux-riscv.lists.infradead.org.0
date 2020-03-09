Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2388B17DD83
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 11:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WO20CG5fseyHugPofVrQoeB5G/yzKX7DsmT814U+Jog=; b=KEM4+mYpOwl7wU
	bAQE9gdiF0QIyzkxzwQe2CqnnkJGysYbb0y6H2hRtaLIY4yRmISHiXlZ8IsW2MgdqnGw/avpxQNNP
	YpX+jwVlg7Kh1CWL0LkyjfpGtan78M9YLbFcVkHo93fyBqJrB7yySlfJmkqvM5U+Q1xLzDPdgL2VS
	obI0RIzvs0kvtZ2DyoqMuypHAS4zCqa2Xm+VSLeTv2ZNPW97rkl8i3bja0V7a0muMRC9SmTm7hKu7
	UpcdAbt/i3QmbxJ6PEQIMJfoG9A6dhNDaOFllg3469qQT+BYGsi00czD9I0kZqdiAUFXqD6LM2vOg
	2v53moCLxhMD6KXnefoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBFcz-0004pA-LR; Mon, 09 Mar 2020 10:27:17 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBFcw-0004oa-20
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 10:27:15 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.1169725|-1; CH=blue; DM=||false|;
 DS=CONTINUE|ham_system_inform|0.0111236-0.0031218-0.985755;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03300; MF=zhiwei_liu@c-sky.com; NM=1; PH=DS;
 RN=12; RT=12; SR=0; TI=SMTPD_---.GyXya.O_1583749628; 
Received: from 172.16.31.150(mailfrom:zhiwei_liu@c-sky.com
 fp:SMTPD_---.GyXya.O_1583749628)
 by smtp.aliyun-inc.com(10.147.41.143);
 Mon, 09 Mar 2020 18:27:09 +0800
Subject: Re: [RFC PATCH V3 00/11] riscv: Add vector ISA support
To: Greentime Hu <greentime.hu@sifive.com>, guoren@kernel.org
References: <20200308094954.13258-1-guoren@kernel.org>
 <CAHCEeh+XYD3uVmaQRGpY=VGxpO9hzMeKasNmAojhkZe9PJ9Lug@mail.gmail.com>
From: LIU Zhiwei <zhiwei_liu@c-sky.com>
Message-ID: <95e3bba4-65c0-8991-9523-c16977f6350f@c-sky.com>
Date: Mon, 9 Mar 2020 18:27:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <CAHCEeh+XYD3uVmaQRGpY=VGxpO9hzMeKasNmAojhkZe9PJ9Lug@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_032714_323077_40E40FFD 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-arch@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 arnd@arndb.de, Anup.Patel@wdc.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Dave Martin <Dave.Martin@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2020/3/9 11:41, Greentime Hu wrote:
> On Sun, Mar 8, 2020 at 5:50 PM <guoren@kernel.org> wrote:
>> From: Guo Ren <guoren@linux.alibaba.com>
>>
>> The implementation follow the RISC-V "V" Vector Extension draft v0.8 with
>> 128bit-vlen and it's based on linux-5.6-rc3 and tested with qemu [1].
>>
>> The patch implement basic context switch, sigcontext save/restore and
>> ptrace interface with a new regset NT_RISCV_VECTOR. Only fixed 128bit-vlen
>> is implemented. We need to discuss about vlen-size for libc sigcontext and
>> ptrace (the maximum size of vlen is unlimited in spec).
>>
>> Puzzle:
>> Dave Martin has talked "Growing CPU register state without breaking ABI" [2]
>> before, and riscv also met vlen size problem. Let's discuss the common issue
>> for all architectures and we need a better solution for unlimited vlen.
>>
>> Any help are welcomed :)
>>
>>   1: https://github.com/romanheros/qemu.git branch:vector-upstream-v3
> Hi Guo,
>
> Thanks for your patch.
> It seems the qemu repo doesn't have this branch?
Hi Greentime,

It's a promise from me. Now it's ready.  You can turn on vector by 
"qemu-system-riscv64 -cpu rv64,v=true,vext_spec=v0.7.1".

Zhiwei



