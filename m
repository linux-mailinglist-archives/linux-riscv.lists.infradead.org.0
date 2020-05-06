Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570161C6AF0
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 10:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXVaKDz+JVYwyoIHnSRq5UCQ9tuNORjprV4LJpsQmBQ=; b=EBs+ADfUTauxxC
	r6uK1XC3tBlJ18urcrOl6Ur8G4L/RnRPpzl3TcxtBfn4tfQnRTnhTej7w2ciWyfnXZFYUlUYTlW9y
	YiX/g17cNj/SDTQymtjnkuZIwhNFE6kIuYB7oKvoecGIPHz3t1RtG8qrS5kSWeVZP3CtyYcdmL6LS
	zH30PE2HGq0iY2ZxXE5f2e9H2C54qdgDWsWxQlgvIi63nCoRwIPnGWOItH4qvRBD7Z9u4pzeu0qza
	bFagQTcBGKOLiHBfeU+jCqtmq2ECXhsxEw5qRKG8BObGRWyZaAQpeSlJjVUjhtDS5FPhIa7ET8kUv
	Ev5UU26KJrtFYaaFQZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWF75-0004jh-1N; Wed, 06 May 2020 08:09:07 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWF6l-0004Mu-C2
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 08:08:54 +0000
Received: from sslproxy05.your-server.de ([78.46.172.2])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jWF6Q-0001an-HW; Wed, 06 May 2020 10:08:26 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jWF6P-0005kQ-Vt; Wed, 06 May 2020 10:08:26 +0200
Subject: Re: [PATCH bpf-next 0/4] RV64 BPF JIT Optimizations
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Luke Nelson <lukenels@cs.washington.edu>
References: <20200506000320.28965-1-luke.r.nels@gmail.com>
 <CAJ+HfNgbuBoMTrU+TM3JCd1stEM1Zi3hG5k=PazT=CxAWa4wBQ@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <76105702-4f84-ead9-6568-48f718cf85c2@iogearbox.net>
Date: Wed, 6 May 2020 10:08:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAJ+HfNgbuBoMTrU+TM3JCd1stEM1Zi3hG5k=PazT=CxAWa4wBQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25803/Tue May  5 14:19:25 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_010847_418926_629A1FA6 
X-CRM114-Status: GOOD (  11.76  )
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>, Netdev <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-riscv@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 KP Singh <kpsingh@chromium.org>, Yonghong Song <yhs@fb.com>,
 bpf <bpf@vger.kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/6/20 9:08 AM, Björn Töpel wrote:
> On Wed, 6 May 2020 at 02:03, Luke Nelson <lukenels@cs.washington.edu> wrote:
>>
>> This patch series introduces a set of optimizations to the BPF JIT
>> on RV64. The optimizations are related to the verifier zero-extension
>> optimization and BPF_JMP BPF_K.
>>
>> We tested the optimizations on a QEMU riscv64 virt machine, using
>> lib/test_bpf and test_verifier, and formally verified their correctness
>> using Serval.
>>
> 
> Luke and Xi,
> 
> Thanks a lot for working on this! Very nice series!
> 
> For the series:
> Reviewed-by: Björn Töpel <bjorn.topel@gmail.com>
> Acked-by: Björn Töpel <bjorn.topel@gmail.com>
> 
>> Luke Nelson (4):
>>    bpf, riscv: Enable missing verifier_zext optimizations on RV64
>>    bpf, riscv: Optimize FROM_LE using verifier_zext on RV64
>>    bpf, riscv: Optimize BPF_JMP BPF_K when imm == 0 on RV64
>>    bpf, riscv: Optimize BPF_JSET BPF_K using andi on RV64
>>
>>   arch/riscv/net/bpf_jit_comp64.c | 64 ++++++++++++++++++++++-----------
>>   1 file changed, 44 insertions(+), 20 deletions(-)
>>
>> Cc: Xi Wang <xi.wang@gmail.com>

Applied, thanks everyone!

