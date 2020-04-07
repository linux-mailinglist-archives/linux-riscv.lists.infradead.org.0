Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE25C1A18C0
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 01:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51wbKckNVQ5mEMdTELUApNVgbj0gJ24bIKsNeBkoENs=; b=AmWDWJ97f1P+wc
	76+VqRIAYbQzUp11VGjtNjEJYR7uWI0PzUkvSOx6k1I7CBjuC6q6Y9dBeILDkitHitRpatlwVvU6i
	OId4LSp/vMQTnvDdkshbdQ1ne1kHxnWBWsqiMXFTnieA4z+oOdViIzZzJba2ixHEnjbFoTLebnHjq
	cHtdqakoBXcQ2gTz3a58o5dx+irkfzOj32m3LDc7Z5qCizyanmVy2Kw+FRZsRFKm60fFLWsDJBbf3
	i7jraxbmRkJJAuFJjZMs/1G8wtWZLpoSD0uRyK8EzmQzdGdxbt7N4B0KjL2G9u1gQZsdMv+vaR+UO
	DG6Fj5BVUA0rTJT5KQuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLxtR-0007Dh-DQ; Tue, 07 Apr 2020 23:44:33 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLxtN-0007Co-If
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 23:44:31 +0000
Received: from sslproxy06.your-server.de ([78.46.172.3])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jLxt0-0001PO-3o; Wed, 08 Apr 2020 01:44:06 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jLxsz-0008rw-Hi; Wed, 08 Apr 2020 01:44:05 +0200
Subject: Re: [PATCH bpf] riscv, bpf: Fix offset range checking for auipc+jalr
 on RV64
To: Luke Nelson <lukenels@cs.washington.edu>, bpf@vger.kernel.org
References: <20200406221604.18547-1-luke.r.nels@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <bdea1a61-53d6-dc03-7cdb-4b6b0710be2e@iogearbox.net>
Date: Wed, 8 Apr 2020 01:44:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200406221604.18547-1-luke.r.nels@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25775/Tue Apr  7 14:53:51 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_164429_615494_D5D12691 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 KP Singh <kpsingh@chromium.org>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 4/7/20 12:16 AM, Luke Nelson wrote:
> The existing code in emit_call on RV64 checks that the PC-relative offset
> to the function fits in 32 bits before calling emit_jump_and_link to emit
> an auipc+jalr pair. However, this check is incorrect because offsets in
> the range [2^31 - 2^11, 2^31 - 1] cannot be encoded using auipc+jalr on
> RV64 (see discussion [1]). The RISC-V spec has recently been updated
> to reflect this fact [2, 3].
> 
> This patch fixes the problem by moving the check on the offset into
> emit_jump_and_link and modifying it to the correct range of encodable
> offsets, which is [-2^31 - 2^11, 2^31 - 2^11). This also enforces the
> check on the offset to other uses of emit_jump_and_link (e.g., BPF_JA)
> as well.
> 
> Currently, this bug is unlikely to be triggered, because the memory
> region from which JITed images are allocated is close enough to kernel
> text for the offsets to not become too large; and because the bounds on
> BPF program size are small enough. This patch prevents this problem from
> becoming an issue if either of these change.
> 
> [1]: https://groups.google.com/a/groups.riscv.org/forum/#!topic/isa-dev/bwWFhBnnZFQ
> [2]: https://github.com/riscv/riscv-isa-manual/commit/b1e42e09ac55116dbf9de5e4fb326a5a90e4a993
> [3]: https://github.com/riscv/riscv-isa-manual/commit/4c1b2066ebd2965a422e41eb262d0a208a7fea07
> 
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Applied, thanks!

