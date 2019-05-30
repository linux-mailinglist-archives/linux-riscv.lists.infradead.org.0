Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135793034A
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 22:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:In-reply-to:
	Message-ID:Subject:To:From:References:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4b7v3GViu2J2lRohU4JiHuq9NRTKEz6ZoYdfhW+Qkc=; b=Fil6HWSW4Qf0l2
	zsQ83vWGaOQD5li+YmfhHVy61HmBztSFdBHKBnMIR2fR2z7lcdYKac8dpLBN+PPYhVGA2xRfUO1jf
	WJFPGbDU+KAVpifAtWE5e9TxG+3A6sDvh67YHOOAoucOqiV42cIedowQiiAGWhvXjd4UY2YEREGvx
	/N135vZZS6oF5cLZmiuDRO9njSAJz739SgkOEFLopZKTTY370yczRcNw21H767WWtuFotU9k/u081
	xfw34apT42Mm+PqcaNiAQ7x1piPS7akbLA+rVjaxVN7NttQxhCM+AdBQE1D5B63FVx2Riv7dLpEpb
	Q3iHovbTINAZc6wSto9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWRhF-0002L2-65; Thu, 30 May 2019 20:30:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWRhB-0002JZ-JO
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 20:30:43 +0000
Received: by mail-wr1-x444.google.com with SMTP id d9so5061791wrx.0
 for <linux-riscv@lists.infradead.org>; Thu, 30 May 2019 13:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:message-id:in-reply-to
 :date:mime-version;
 bh=HSteFUKF52rWVzt3NjcoHxXLBvXNbvyEYXBsHNUqUF0=;
 b=wuaFUP1Ozlt+4+MWLG6fRYDs6aSrPIgbEmXi3tSSC6W/7egGZLIS272b1Qheh5JU5P
 Oq9csJMPH8Wywm1a4U60VCgOQa48Mrk4ffhhYNDADsbPNnxg3nPWusMMHDatHMZPgLh6
 S+fNEkjVPZqJ+sbUADzBEOh/azCtNVzI8Lv0x4pRr8ltsnNkeJqrjxnu+cTAblZKpSSr
 mhjzCvGsBkx1x+qxeK1RRLbjGe0WMF6Jwt0JuMjeOiAlmSFhO2awU+QZJ+JOvnMhqqHk
 IWb/jMFbRDHMXFigziw/39/xe8Kn6eQ/PZAfEMVg9G41H/U3UEfYFM0oKvmMbG68BX1G
 Bv6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :message-id:in-reply-to:date:mime-version;
 bh=HSteFUKF52rWVzt3NjcoHxXLBvXNbvyEYXBsHNUqUF0=;
 b=iAI+Uy7QJzceAvqwzVHI6X301kpnjmvkfGiOnxMKJLzXRr/S8dAtpLIVA/Z+Q8tKz4
 pocWoipwttGA5z4SC1iAMhD1hYmgZ+36Ws+ElgI0Aj9qbhSD3Q8MsXPe1nKbw8o65Hgr
 dMEiCkwIS6UD2PYAd7Ni9phHgz2xFyF+MuRZV460FVODT9arsbwIvzsp/oRDxdb8wkEK
 fCwHz1CFqbMlp/z8b5IDSV0+p7evEeTazZMyLnkJFBS1MC4tdfbbZzssySgmf3X3S7TR
 eOYeE+3ITapPEN4j8c/SUA1g3M5q2niv+VEqCJ5TmjtQSkWw9tSOSkrnBIhetULK6PbN
 t4hg==
X-Gm-Message-State: APjAAAVVmd8GGeOYuvzbuu6eN7jKCCeDb51WJtiKDDFdmcRJYapCCj12
 gAM7GTjLbNLBfWF/LoyiXmLilE8ksNU=
X-Google-Smtp-Source: APXvYqxGLUZbjBbciy7kuigIoFOTAYX5bbCb2hDNu9emCUTJfNI7h9Yf8US1rv/g8abXrsSbSEaO8g==
X-Received: by 2002:adf:e845:: with SMTP id d5mr3859527wrn.154.1559248239296; 
 Thu, 30 May 2019 13:30:39 -0700 (PDT)
Received: from LAPTOP-V3S7NLPL (cpc1-cmbg19-2-0-cust104.5-4.cable.virginm.net.
 [82.27.180.105])
 by smtp.gmail.com with ESMTPSA id 8sm3262857wmf.18.2019.05.30.13.30.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 13:30:37 -0700 (PDT)
References: <20190530190800.7633-1-luke.r.nels@gmail.com>
 <20190530190800.7633-2-luke.r.nels@gmail.com>
User-agent: mu4e 0.9.18; emacs 25.2.2
From: Jiong Wang <jiong.wang@netronome.com>
To: Luke Nelson <luke.r.nels@gmail.com>
Subject: Re: [PATCH 2/2] bpf: test_bpf: add tests for upper bits of 32-bit
 operations
Message-ID: <87lfyn4rdy.fsf@netronome.com>
In-reply-to: <20190530190800.7633-2-luke.r.nels@gmail.com>
Date: Thu, 30 May 2019 21:30:33 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_133041_644919_F4FE4C55 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Luke Nelson writes:

> This commit introduces tests that validate the upper 32 bits
> of the result of 32-bit BPF ALU operations.
>
> The existing tests for 32-bit operations do not check the upper 32
> bits of results because the exit instruction truncates the result.
> These tests perform a 32-bit ALU operation followed by a right shift.
> These tests can catch subtle bugs in the extension behavior of JITed
> instructions, including several bugs in the RISC-V BPF JIT, fixed in
> another patch.

Hi Luke,

  Have you seen the following?

    https://www.spinics.net/lists/netdev/msg573355.html

  it has been merged to bpf tree and should have full test coverage of all
  bpf insns that could write to sub-register and are exposed to JIT
  back-end.

  And AFAIK, we add new unit tests to test_verifier which is a userspace
  test infrastructure which offers more test functionality plus tests will
  go through verifier.

Regards,
Jiong

> The added tests pass the JIT and interpreter on x86, as well as the
> JIT and interpreter of RISC-V once the zero extension bugs were fixed.
>
> Cc: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> ---
>  lib/test_bpf.c | 164 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 164 insertions(+)
>
> diff --git a/lib/test_bpf.c b/lib/test_bpf.c
> index 0845f635f404..4580dc0220f1 100644
> --- a/lib/test_bpf.c
> +++ b/lib/test_bpf.c
> @@ -2461,6 +2461,20 @@ static struct bpf_test tests[] = {
>  		{ },
>  		{ { 0, 1 } },
>  	},
> +	{
> +		"ALU_ADD_X: (1 + 4294967294) >> 32 + 4294967294 = 4294967294",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, 1U),
> +			BPF_ALU32_IMM(BPF_MOV, R1, 4294967294U),
> +			BPF_ALU32_REG(BPF_ADD, R0, R1),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_REG(BPF_ADD, R0, R1),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 4294967294U } },
> +	},
>  	{
>  		"ALU64_ADD_X: 1 + 2 = 3",
>  		.u.insns_int = {
> @@ -2812,6 +2826,20 @@ static struct bpf_test tests[] = {
>  		{ },
>  		{ { 0, 1 } },
>  	},
> +	{
> +		"ALU_SUB_X: (4294967295 - 1) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, 4294967295U),
> +			BPF_ALU32_IMM(BPF_MOV, R1, 1U),
> +			BPF_ALU32_REG(BPF_SUB, R0, R1),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_REG(BPF_ADD, R0, R1),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	{
>  		"ALU64_SUB_X: 3 - 1 = 2",
>  		.u.insns_int = {
> @@ -3391,6 +3419,20 @@ static struct bpf_test tests[] = {
>  		{ },
>  		{ { 0, 0xffffffff } },
>  	},
> +	{
> +		"ALU_AND_X: (-1 & -1) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, -1UL),
> +			BPF_LD_IMM64(R1, -1UL),
> +			BPF_ALU32_REG(BPF_AND, R0, R1),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_IMM(BPF_ADD, R0, 1U),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	{
>  		"ALU64_AND_X: 3 & 2 = 2",
>  		.u.insns_int = {
> @@ -3533,6 +3575,20 @@ static struct bpf_test tests[] = {
>  		{ },
>  		{ { 0, 0xffffffff } },
>  	},
> +	{
> +		"ALU_OR_X: (0 & -1) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, 0),
> +			BPF_LD_IMM64(R1, -1UL),
> +			BPF_ALU32_REG(BPF_OR, R0, R1),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_IMM(BPF_ADD, R0, 1U),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	{
>  		"ALU64_OR_X: 1 | 2 = 3",
>  		.u.insns_int = {
> @@ -3675,6 +3731,20 @@ static struct bpf_test tests[] = {
>  		{ },
>  		{ { 0, 0xfffffffe } },
>  	},
> +	{
> +		"ALU_XOR_X: (0 ^ -1) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, 0),
> +			BPF_LD_IMM64(R1, -1UL),
> +			BPF_ALU32_REG(BPF_XOR, R0, R1),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_IMM(BPF_ADD, R0, 1U),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	{
>  		"ALU64_XOR_X: 5 ^ 6 = 3",
>  		.u.insns_int = {
> @@ -3817,6 +3887,20 @@ static struct bpf_test tests[] = {
>  		{ },
>  		{ { 0, 0x80000000 } },
>  	},
> +	{
> +		"ALU_LSH_X: (1 << 31) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, 1),
> +			BPF_ALU32_IMM(BPF_MOV, R1, 31),
> +			BPF_ALU32_REG(BPF_LSH, R0, R1),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_IMM(BPF_ADD, R0, 1),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	{
>  		"ALU64_LSH_X: 1 << 1 = 2",
>  		.u.insns_int = {
> @@ -3842,6 +3926,19 @@ static struct bpf_test tests[] = {
>  		{ { 0, 0x80000000 } },
>  	},
>  	/* BPF_ALU | BPF_LSH | BPF_K */
> +	{
> +		"ALU_LSH_K: (1 << 31) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, 1),
> +			BPF_ALU32_IMM(BPF_LSH, R0, 31),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_IMM(BPF_ADD, R0, 1),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	{
>  		"ALU_LSH_K: 1 << 1 = 2",
>  		.u.insns_int = {
> @@ -3911,6 +4008,20 @@ static struct bpf_test tests[] = {
>  		{ },
>  		{ { 0, 1 } },
>  	},
> +	{
> +		"ALU_RSH_X: (0x80000000 >> 0) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, 0x80000000),
> +			BPF_ALU32_IMM(BPF_MOV, R1, 0),
> +			BPF_ALU32_REG(BPF_RSH, R0, R1),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_IMM(BPF_ADD, R0, 1),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	{
>  		"ALU64_RSH_X: 2 >> 1 = 1",
>  		.u.insns_int = {
> @@ -3936,6 +4047,19 @@ static struct bpf_test tests[] = {
>  		{ { 0, 1 } },
>  	},
>  	/* BPF_ALU | BPF_RSH | BPF_K */
> +	{
> +		"ALU_RSH_K: (0x80000000 >> 0) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, 0x80000000),
> +			BPF_ALU32_IMM(BPF_RSH, R0, 0),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_IMM(BPF_ADD, R0, 1),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	{
>  		"ALU_RSH_K: 2 >> 1 = 1",
>  		.u.insns_int = {
> @@ -3993,7 +4117,34 @@ static struct bpf_test tests[] = {
>  		{ },
>  		{ { 0, 0xffff00ff } },
>  	},
> +	{
> +		"ALU_ARSH_X: (0x80000000 >> 0) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, 0x80000000),
> +			BPF_ALU32_IMM(BPF_MOV, R1, 0),
> +			BPF_ALU32_REG(BPF_ARSH, R0, R1),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_IMM(BPF_ADD, R0, 1),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	/* BPF_ALU | BPF_ARSH | BPF_K */
> +	{
> +		"ALU_ARSH_K: (0x80000000 >> 0) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_LD_IMM64(R0, 0x80000000),
> +			BPF_ALU32_IMM(BPF_ARSH, R0, 0),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU32_IMM(BPF_ADD, R0, 1),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	{
>  		"ALU_ARSH_K: 0xff00ff0000000000 >> 40 = 0xffffffffffff00ff",
>  		.u.insns_int = {
> @@ -4028,6 +4179,19 @@ static struct bpf_test tests[] = {
>  		{ },
>  		{ { 0, 3 } },
>  	},
> +	{
> +		"ALU_NEG: -(1) >> 32 + 1 = 1",
> +		.u.insns_int = {
> +			BPF_ALU32_IMM(BPF_MOV, R0, 1),
> +			BPF_ALU32_IMM(BPF_NEG, R0, 0),
> +			BPF_ALU64_IMM(BPF_RSH, R0, 32),
> +			BPF_ALU64_IMM(BPF_ADD, R0, 1),
> +			BPF_EXIT_INSN(),
> +		},
> +		INTERNAL,
> +		{ },
> +		{ { 0, 1 } },
> +	},
>  	{
>  		"ALU64_NEG: -(3) = -3",
>  		.u.insns_int = {


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
