Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827B81E26E9
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 18:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alIdGtUoUeqHQ/QveG6wv4ZRPyVxXnt1o5A5dPZ9SiM=; b=d/kK4y6ov4q/o9
	GvWApKp5FTTNWk8jLGUH7qJYPJtHNxDA0lXt9Xk0eLrOSQsZLF2jDtopYMNlfza6ZJat3TVecee1P
	PLGHY3sQHmEjHwe13HZ4SdtH8doDMfZk4rDx2lBJgwL89y9Mjq01bFNNTjcYDgHXxytOkC0p8p1DK
	42S1UkNGZ4fY2NhzX8HCNQKlY7OCXxaNBfNkbiuwWKZ4SgnCJihDzy8F0nuJRgXKXv6BiJ1dwu1qW
	irhj9Y7w0uDAvZHQBB7LdZeIJQpqHoah1X+GZxfzwZLLaSe468IEQmYvZA04OOsm/+befDK03+iFQ
	IFcQhnHvWlAp82+Sej4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdcPq-0006GJ-Qg; Tue, 26 May 2020 16:26:58 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdcPn-0006FX-5m
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 16:26:56 +0000
X-Originating-IP: 90.112.45.105
Received: from [192.168.1.14] (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 85E5020010;
 Tue, 26 May 2020 16:26:48 +0000 (UTC)
Subject: Re: [PATCH 7/8] riscv: Use pgtable_l4_enabled to output mmu type in
 cpuinfo
To: Anup Patel <anup@brainfault.org>
References: <20200524091008.25587-1-alex@ghiti.fr>
 <20200524091008.25587-8-alex@ghiti.fr>
 <CAAhSdy3JU8ae8Gx-4iNiOKbC027-Cgjc_8=BYEp1sO3pW6D5XA@mail.gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <e27f85e4-14d8-e5d8-3e52-f4bc0c34d760@ghiti.fr>
Date: Tue, 26 May 2020 12:26:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAAhSdy3JU8ae8Gx-4iNiOKbC027-Cgjc_8=BYEp1sO3pW6D5XA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_092655_485826_39408D3F 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Anup,

Le 5/25/20 à 2:21 AM, Anup Patel a écrit :
> On Sun, May 24, 2020 at 2:47 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>> Now that the mmu type is determined at runtime using SATP
>> characteristic, use the global variable pgtable_l4_enabled to output
>> mmu type of the processor through /proc/cpuinfo instead of relying on
>> device tree infos.
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>> Reviewed-by: Anup Patel <anup@brainfault.org>
>> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>> ---
>>   arch/riscv/boot/dts/sifive/fu540-c000.dtsi |  4 ----
>>   arch/riscv/kernel/cpu.c                    | 24 ++++++++++++----------
>>   2 files changed, 13 insertions(+), 15 deletions(-)
>>
>> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> index 7db861053483..6138590a2229 100644
>> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> @@ -50,7 +50,6 @@
>>                          i-cache-size = <32768>;
>>                          i-tlb-sets = <1>;
>>                          i-tlb-size = <32>;
>> -                       mmu-type = "riscv,sv39";
>>                          reg = <1>;
>>                          riscv,isa = "rv64imafdc";
>>                          tlb-split;
>> @@ -74,7 +73,6 @@
>>                          i-cache-size = <32768>;
>>                          i-tlb-sets = <1>;
>>                          i-tlb-size = <32>;
>> -                       mmu-type = "riscv,sv39";
>>                          reg = <2>;
>>                          riscv,isa = "rv64imafdc";
>>                          tlb-split;
>> @@ -98,7 +96,6 @@
>>                          i-cache-size = <32768>;
>>                          i-tlb-sets = <1>;
>>                          i-tlb-size = <32>;
>> -                       mmu-type = "riscv,sv39";
>>                          reg = <3>;
>>                          riscv,isa = "rv64imafdc";
>>                          tlb-split;
>> @@ -122,7 +119,6 @@
>>                          i-cache-size = <32768>;
>>                          i-tlb-sets = <1>;
>>                          i-tlb-size = <32>;
>> -                       mmu-type = "riscv,sv39";
>>                          reg = <4>;
>>                          riscv,isa = "rv64imafdc";
>>                          tlb-split;
> Your PATCH6 is already doing the right thing by skipping CPU DT
> nodes that don't have "mmu-type" DT property.
>
> The "mmu-type" DT property is very critical for RUNTIME M-mode
> firmware (OpenSBI) because it tells whether a given CPU has MMU
> (or not). This is also in agreement with the current DT bindings
> document for RISC-V CPUs.
>
> I suggest to drop the change in sifive/fu540-c000.dtsi and rest of
> the patch is fine so my Reviewed-by still holds.


Ok I'll do that in v2, thanks.


Alex


> Regards,
> Anup
>
>> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
>> index 40a3c442ac5f..38a699b997a8 100644
>> --- a/arch/riscv/kernel/cpu.c
>> +++ b/arch/riscv/kernel/cpu.c
>> @@ -8,6 +8,8 @@
>>   #include <linux/of.h>
>>   #include <asm/smp.h>
>>
>> +extern bool pgtable_l4_enabled;
>> +
>>   /*
>>    * Returns the hart ID of the given device tree node, or -ENODEV if the node
>>    * isn't an enabled and valid RISC-V hart node.
>> @@ -54,18 +56,19 @@ static void print_isa(struct seq_file *f, const char *isa)
>>          seq_puts(f, "\n");
>>   }
>>
>> -static void print_mmu(struct seq_file *f, const char *mmu_type)
>> +static void print_mmu(struct seq_file *f)
>>   {
>> +       char sv_type[16];
>> +
>>   #if defined(CONFIG_32BIT)
>> -       if (strcmp(mmu_type, "riscv,sv32") != 0)
>> -               return;
>> +       strncpy(sv_type, "sv32", 5);
>>   #elif defined(CONFIG_64BIT)
>> -       if (strcmp(mmu_type, "riscv,sv39") != 0 &&
>> -           strcmp(mmu_type, "riscv,sv48") != 0)
>> -               return;
>> +       if (pgtable_l4_enabled)
>> +               strncpy(sv_type, "sv48", 5);
>> +       else
>> +               strncpy(sv_type, "sv39", 5);
>>   #endif
>> -
>> -       seq_printf(f, "mmu\t\t: %s\n", mmu_type+6);
>> +       seq_printf(f, "mmu\t\t: %s\n", sv_type);
>>   }
>>
>>   static void *c_start(struct seq_file *m, loff_t *pos)
>> @@ -90,14 +93,13 @@ static int c_show(struct seq_file *m, void *v)
>>   {
>>          unsigned long cpu_id = (unsigned long)v - 1;
>>          struct device_node *node = of_get_cpu_node(cpu_id, NULL);
>> -       const char *compat, *isa, *mmu;
>> +       const char *compat, *isa;
>>
>>          seq_printf(m, "processor\t: %lu\n", cpu_id);
>>          seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
>>          if (!of_property_read_string(node, "riscv,isa", &isa))
>>                  print_isa(m, isa);
>> -       if (!of_property_read_string(node, "mmu-type", &mmu))
>> -               print_mmu(m, mmu);
>> +       print_mmu(m);
>>          if (!of_property_read_string(node, "compatible", &compat)
>>              && strcmp(compat, "riscv"))
>>                  seq_printf(m, "uarch\t\t: %s\n", compat);
>> --
>> 2.20.1
>>

