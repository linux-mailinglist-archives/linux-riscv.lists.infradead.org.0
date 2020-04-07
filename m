Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B92F1A065A
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 07:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlODluTxJI5l1UBkKpwNJ1Glya2gsisdDLBl5J6DP6M=; b=nW8sXIZkhc2Fh+
	5/S1pXRuiXeUAhPJjuefH42yCVdoqObl2L5+YDXQvOqMfyoEJW7S7YnBo8R8w1ie9nZHJgqiwYT75
	/ywWjqCWbppRee1i52/LV2kOOypgSZN/W+idL5nevq8+sl2tE/MXKw6C7wnF8P8zRVJN9KClc7uPm
	NKZZ58rSP2CJGQ/AD9wM+2YJ3E0NgY+dbDmEEJBnLChxST9FTnzfjY57chKx5cCbNV+I8g5rbvim0
	gHHnu+S1ZofAF7KUm3CKGUG+zuqVkhyvHlqqAhqhtBLWKqO1VZhQK4FJqvUBHVq7QFNHBNBTCTGLa
	0rdZUj35t6aS1/bdlzMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgZf-0001Y5-SL; Tue, 07 Apr 2020 05:14:59 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgZb-0001X5-NS
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 05:14:58 +0000
X-Originating-IP: 2.7.45.25
Received: from [192.168.1.101] (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 4E2CF240006;
 Tue,  7 Apr 2020 05:14:53 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
Subject: Re: [RFC PATCH 6/7] dt-bindings: riscv: Remove "riscv, svXX" property
 from device-tree
To: Palmer Dabbelt <palmer@dabbelt.com>
References: <mhng-264d030a-d77e-43b6-a2d8-d4598205e2af@palmerdabbelt-glaptop1>
Message-ID: <56690fc1-fdc3-67d9-5a39-e92d0ec6810c@ghiti.fr>
Date: Tue, 7 Apr 2020 01:14:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <mhng-264d030a-d77e-43b6-a2d8-d4598205e2af@palmerdabbelt-glaptop1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_221457_018827_560CF168 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: anup@brainfault.org, linux-kernel@vger.kernel.org, zong.li@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 4/3/20 11:53 AM, Palmer Dabbelt wrote:
> On Sun, 22 Mar 2020 04:00:27 PDT (-0700), alex@ghiti.fr wrote:
>> This property can not be used before virtual memory is set up
>> and then the  distinction between sv39 and sv48 is done at runtime
>> using SATP csr property: this property is now useless, so remove it.
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>> ---
>>  Documentation/devicetree/bindings/riscv/cpus.yaml | 13 -------------
>>  1 file changed, 13 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml 
>> b/Documentation/devicetree/bindings/riscv/cpus.yaml
>> index 04819ad379c2..12baabbac213 100644
>> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
>> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
>> @@ -39,19 +39,6 @@ properties:
>>        Identifies that the hart uses the RISC-V instruction set
>>        and identifies the type of the hart.
>>
>> -  mmu-type:
>> -    allOf:
>> -      - $ref: "/schemas/types.yaml#/definitions/string"
>> -      - enum:
>> -          - riscv,sv32
>> -          - riscv,sv39
>> -          - riscv,sv48
>> -    description:
>> -      Identifies the MMU address translation mode used on this
>> -      hart.  These values originate from the RISC-V Privileged
>> -      Specification document, available from
>> -      https://riscv.org/specifications/
>> -
>>    riscv,isa:
>>      allOf:
>>        - $ref: "/schemas/types.yaml#/definitions/string"
> 
> I'd prefer if we continue to define this in the schema: while Linux 
> won't use
> it, it's still useful for other programs that want to statically 
> determine the
> available VA widths.

Sure, I'll remove that in next version.

Thanks,

Alex

