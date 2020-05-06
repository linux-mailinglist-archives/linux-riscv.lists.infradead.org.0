Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA081C64C2
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 02:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JxRTwli/svDqnOaBY0adT76Z0FFG8KkHdubVGApAA6g=; b=sPbm9ox4l/gBdpqSeMxnaDNU3O
	s8H1BwIk5rCf6YJYK7xs3vrAzgGMzAZWhmMcBKZ9uGn3PoJRo10ZT6jEUNvGBvqcWrGPj/smKN9do
	Jg9es2S6UZIUWzJyohyxwbrgM2ugP8I65O6JEeXOd9xiZhkoMqULMG0BwaJvnQUBba3fo/FqC0hOO
	1qqoLD2hqSEbpOXJdLnp2vyTGhSGYOc8nYPaQrdlWcD5LrvlCmlSv6dTQ7aV/Lz9pgS6vnJMvCjBM
	Vi7ySxNjQKDKPwS4tYjkJt9BpYk47qZAMfHaIH0XUb11OaG1ZxAcGCXW/rrRBW2H+rqAu5WebpB7I
	moAticdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7XE-0007gn-Oc; Wed, 06 May 2020 00:03:36 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7X9-0007dd-Dy
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 00:03:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id s20so1542500plp.6
 for <linux-riscv@lists.infradead.org>; Tue, 05 May 2020 17:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id;
 bh=JxRTwli/svDqnOaBY0adT76Z0FFG8KkHdubVGApAA6g=;
 b=hBEgU4DYNOg3qWU84rnU6AnFuKR981yS5BSoO3R/amg38P+jgdPsMbTP70YKHF3J76
 ISfsmEBfrEtrkGLH2pkRg7Fe4lYwDNiRfjMrZkkcqUv2DWOZbq2+54F9b9bHiIE2Av7l
 8JnrloZFVv4BenXnGU9ff7pMXJwzMJFAUgcIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JxRTwli/svDqnOaBY0adT76Z0FFG8KkHdubVGApAA6g=;
 b=FzlQ+wGDKBoTC5e9lJf9QDUAylR3tISu4KRo47S8Ua7TF4CAjkZ4J0nomqJQ83Kbh2
 ecub+D8rtDw2YwxlIVTxca+5TFAaJ9MLlulGwOIAm18b8EmXjU4u3TeUjlU+AADhZnYV
 CeDn+o3LlWmELjo3iTmnoQ8P8AC9NB1FKOZppwxvgzU4Qr6kQIfNGk7Rm47GFOge5EaK
 FKMaLTNHPCJHlYYgJhdDd2YenaURi7ur8zV1sdrrI87rybpXg0rvFM9EPyMdmfijrOs2
 kafH1C5AP3cbf5SGbKdVcLhP3WH27TcCtbc8wAR4VwZHAPPuO2Kn3prp0EZnnh39oyjD
 /f5A==
X-Gm-Message-State: AGi0PuZFCwT3uMQ9EBW9JIXi+r1XrNoBiJTsjBPKJiWfNm5c13gIXscN
 d4wTL/d/oK6Yt2q6Gnr5OHn6wQ==
X-Google-Smtp-Source: APiQypL3GD15VTzPevJlQEL2Gpk1YRyV1HsaesDcgEeoRusw+eAllZFZbBCvSxvf7cmk2/iAjHnNkQ==
X-Received: by 2002:a17:902:a40b:: with SMTP id
 p11mr5668144plq.304.1588723410355; 
 Tue, 05 May 2020 17:03:30 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id u3sm133912pfn.217.2020.05.05.17.03.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 17:03:29 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next 0/4] RV64 BPF JIT Optimizations
Date: Tue,  5 May 2020 17:03:16 -0700
Message-Id: <20200506000320.28965-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_170331_489685_DE4008AF 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Daniel Borkmann <daniel@iogearbox.net>, Luke Nelson <luke.r.nels@gmail.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 KP Singh <kpsingh@chromium.org>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series introduces a set of optimizations to the BPF JIT
on RV64. The optimizations are related to the verifier zero-extension
optimization and BPF_JMP BPF_K.

We tested the optimizations on a QEMU riscv64 virt machine, using
lib/test_bpf and test_verifier, and formally verified their correctness
using Serval.

Luke Nelson (4):
  bpf, riscv: Enable missing verifier_zext optimizations on RV64
  bpf, riscv: Optimize FROM_LE using verifier_zext on RV64
  bpf, riscv: Optimize BPF_JMP BPF_K when imm == 0 on RV64
  bpf, riscv: Optimize BPF_JSET BPF_K using andi on RV64

 arch/riscv/net/bpf_jit_comp64.c | 64 ++++++++++++++++++++++-----------
 1 file changed, 44 insertions(+), 20 deletions(-)

Cc: Xi Wang <xi.wang@gmail.com>

-- 
2.17.1


