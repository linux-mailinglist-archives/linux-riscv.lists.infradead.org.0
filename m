Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A085519CD1C
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Apr 2020 00:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rs3F5tf/xo1l+VzVANgFgzYX0Doneh0ELbzD8K2O6xY=; b=H3CuY16uMyH54C
	uKIuMkmnkRlxtoZIKMzl25ZW3H/un40XwKAdK7DWgYOT13RkzfeU3wcZw1Jodv5pdJQ6S3aO5OyIT
	uEAHdGkYWzZb02B1OFMZnxIRN8jc6UPFzoP32Jz8fmMehnWoNCfLhm0Tt4pUQqhEEH0DZ1aUTR5k/
	ysrSySYLMVhVzJlxWqu31+C7zHL4yb2vZVUJQMrAN7FD33yo4kUtIsW+rwJO+qsjgfDLh6vrgrvtR
	AiJtzOfaXKDeOxKXDhQzTN1hR2AoZCBevifCDNMjhb3JBcMj6MyLQlpUPzSUHsbnltcgJVqvo3/C8
	3f76+3eGdyYC9N1WIGag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK8ga-0002vj-Dk; Thu, 02 Apr 2020 22:51:44 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK8gX-0002uJ-6p
 for linux-riscv@lists.infradead.org; Thu, 02 Apr 2020 22:51:42 +0000
Received: from sslproxy05.your-server.de ([78.46.172.2])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jK8gK-0004OD-FO; Fri, 03 Apr 2020 00:51:28 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jK8gK-000XgO-4b; Fri, 03 Apr 2020 00:51:28 +0200
Subject: Re: [PATCH bpf] riscv: remove BPF JIT for nommu builds
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org, ast@kernel.org
References: <20200331101046.23252-1-bjorn.topel@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <92890a1f-12d6-6505-c3a9-60cf9753dc2b@iogearbox.net>
Date: Fri, 3 Apr 2020 00:51:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200331101046.23252-1-bjorn.topel@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25770/Thu Apr  2 14:58:54 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_155141_244869_84AFA1AE 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: hch@infradead.org, linux-riscv@lists.infradead.org, Damien.LeMoal@wdc.com,
 kbuild test robot <lkp@intel.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/31/20 12:10 PM, Björn Töpel wrote:
> The BPF JIT fails to build for kernels configured to !MMU. Without an
> MMU, the BPF JIT does not make much sense, therefore this patch
> disables the JIT for nommu builds.
> 
> This was reported by the kbuild test robot:
> 
>     All errors (new ones prefixed by >>):
> 
>        arch/riscv/net/bpf_jit_comp64.c: In function 'bpf_jit_alloc_exec':
>     >> arch/riscv/net/bpf_jit_comp64.c:1094:47: error: 'BPF_JIT_REGION_START' undeclared (first use in this function)
>         1094 |  return __vmalloc_node_range(size, PAGE_SIZE, BPF_JIT_REGION_START,
>              |                                               ^~~~~~~~~~~~~~~~~~~~
>        arch/riscv/net/bpf_jit_comp64.c:1094:47: note: each undeclared identifier is reported only once for each function it appears in
>     >> arch/riscv/net/bpf_jit_comp64.c:1095:9: error: 'BPF_JIT_REGION_END' undeclared (first use in this function)
>         1095 |         BPF_JIT_REGION_END, GFP_KERNEL,
>              |         ^~~~~~~~~~~~~~~~~~
>        arch/riscv/net/bpf_jit_comp64.c:1098:1: warning: control reaches end of non-void function [-Wreturn-type]
>         1098 | }
>              | ^
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>

Applied, thanks!

