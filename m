Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163921A0658
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 07:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEmBO96Vcuh4aOFMT+j90ARQ8MxNgZIyNL/Gv35JGH4=; b=oatlkYybC2Rcf4
	a2ix3xacCAwcCjPs/1IyAPvTk4UEONpOHVPe/abMUak4waRJ6o3y6xPZynhsCRB8hi82rvBcDC+hP
	haB8Hs4fN7Zequ+DziFYeGOmNZrWRfxuuEWqqQ7viqxHoz0ttEy0JzTKIqUreHMnGf4UnBSTj0Z5j
	6rj+K+p9kexLQ/IiRRPifeQV4OarJmma+/hBMWq2WHOJyZUb9IFMFAMN6/SFxbfehmLrlXeOhxoSq
	sgh3Jn+7dzPbTv5MIYB251sDF0ypI2qiWTNqrY35+0rtb9HwL9erOSfy62BEMwrxFidOrbmDdGEii
	CqWSFi7vrwWryRAPhvRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgZK-0001S3-25; Tue, 07 Apr 2020 05:14:38 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgZG-0001Qp-0V
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 05:14:35 +0000
X-Originating-IP: 2.7.45.25
Received: from [192.168.1.101] (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 8E1DDFF805;
 Tue,  7 Apr 2020 05:14:28 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
Subject: Re: [RFC PATCH 5/7] riscv: Use pgtable_l4_enabled to output mmu type
 in cpuinfo
To: Palmer Dabbelt <palmer@dabbelt.com>
References: <mhng-a151714b-ba54-41dc-bbc6-e215c9594e59@palmerdabbelt-glaptop1>
Message-ID: <eb30b9db-00c7-6f06-f276-0e8e9be4d7df@ghiti.fr>
Date: Tue, 7 Apr 2020 01:14:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <mhng-a151714b-ba54-41dc-bbc6-e215c9594e59@palmerdabbelt-glaptop1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_221434_321720_2723CA6F 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
> On Sun, 22 Mar 2020 04:00:26 PDT (-0700), alex@ghiti.fr wrote:
>> Now that the mmu type is determined at runtime using SATP
>> characteristic, use the global variable pgtable_l4_enabled to output
>> mmu type of the processor through /proc/cpuinfo instead of relying on
>> device tree infos.
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>> ---
>>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi |  4 ----
>>  arch/riscv/kernel/cpu.c                    | 24 ++++++++++++----------
>>  2 files changed, 13 insertions(+), 15 deletions(-)
>>
>> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi 
>> b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> index 7db861053483..6138590a2229 100644
>> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> @@ -50,7 +50,6 @@
>>              i-cache-size = <32768>;
>>              i-tlb-sets = <1>;
>>              i-tlb-size = <32>;
>> -            mmu-type = "riscv,sv39";
>>              reg = <1>;
>>              riscv,isa = "rv64imafdc";
>>              tlb-split;
>> @@ -74,7 +73,6 @@
>>              i-cache-size = <32768>;
>>              i-tlb-sets = <1>;
>>              i-tlb-size = <32>;
>> -            mmu-type = "riscv,sv39";
>>              reg = <2>;
>>              riscv,isa = "rv64imafdc";
>>              tlb-split;
>> @@ -98,7 +96,6 @@
>>              i-cache-size = <32768>;
>>              i-tlb-sets = <1>;
>>              i-tlb-size = <32>;
>> -            mmu-type = "riscv,sv39";
>>              reg = <3>;
>>              riscv,isa = "rv64imafdc";
>>              tlb-split;
>> @@ -122,7 +119,6 @@
>>              i-cache-size = <32768>;
>>              i-tlb-sets = <1>;
>>              i-tlb-size = <32>;
>> -            mmu-type = "riscv,sv39";
>>              reg = <4>;
>>              riscv,isa = "rv64imafdc";
>>              tlb-split;
>> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
>> index 40a3c442ac5f..38a699b997a8 100644
>> --- a/arch/riscv/kernel/cpu.c
>> +++ b/arch/riscv/kernel/cpu.c
>> @@ -8,6 +8,8 @@
>>  #include <linux/of.h>
>>  #include <asm/smp.h>
>>
>> +extern bool pgtable_l4_enabled;
>> +
>>  /*
>>   * Returns the hart ID of the given device tree node, or -ENODEV if 
>> the node
>>   * isn't an enabled and valid RISC-V hart node.
>> @@ -54,18 +56,19 @@ static void print_isa(struct seq_file *f, const 
>> char *isa)
>>      seq_puts(f, "\n");
>>  }
>>
>> -static void print_mmu(struct seq_file *f, const char *mmu_type)
>> +static void print_mmu(struct seq_file *f)
>>  {
>> +    char sv_type[16];
>> +
>>  #if defined(CONFIG_32BIT)
>> -    if (strcmp(mmu_type, "riscv,sv32") != 0)
>> -        return;
>> +    strncpy(sv_type, "sv32", 5);
>>  #elif defined(CONFIG_64BIT)
>> -    if (strcmp(mmu_type, "riscv,sv39") != 0 &&
>> -        strcmp(mmu_type, "riscv,sv48") != 0)
>> -        return;
>> +    if (pgtable_l4_enabled)
>> +        strncpy(sv_type, "sv48", 5);
>> +    else
>> +        strncpy(sv_type, "sv39", 5);
>>  #endif
>> -
>> -    seq_printf(f, "mmu\t\t: %s\n", mmu_type+6);
>> +    seq_printf(f, "mmu\t\t: %s\n", sv_type);
>>  }
>>
>>  static void *c_start(struct seq_file *m, loff_t *pos)
>> @@ -90,14 +93,13 @@ static int c_show(struct seq_file *m, void *v)
>>  {
>>      unsigned long cpu_id = (unsigned long)v - 1;
>>      struct device_node *node = of_get_cpu_node(cpu_id, NULL);
>> -    const char *compat, *isa, *mmu;
>> +    const char *compat, *isa;
>>
>>      seq_printf(m, "processor\t: %lu\n", cpu_id);
>>      seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
>>      if (!of_property_read_string(node, "riscv,isa", &isa))
>>          print_isa(m, isa);
>> -    if (!of_property_read_string(node, "mmu-type", &mmu))
>> -        print_mmu(m, mmu);
>> +    print_mmu(m);
>>      if (!of_property_read_string(node, "compatible", &compat)
>>          && strcmp(compat, "riscv"))
>>          seq_printf(m, "uarch\t\t: %s\n", compat);
> 
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks,

Alex

