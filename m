Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA617A7DC
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 14:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Cgo8EhFQ3Cf3rXbpDYzLr2cijX9w+Ke/ONOG21xKks=; b=aJT0gsEKuxHdqA
	esRpr1JqespJsWf0o7Zis2TCFqa7Oyrnmt7JI4Fm4tshVKpDOAxJJvXvCapzZiDG8S9JBxa636UGe
	zOLkrHng+Db1OTBV1W25d/M7Y2pdZSHZY4d1UXytMRAFbpmwT2esiIXjzfzig/Bq/eMh3KI2EjnO9
	15wG7QhFq/WWJve9VeK+dE4BSaNdyrriS3Z+tMA62m6G4QPakFRsL3D9cZ5mOPsMEpszemcml0L9H
	pxTBpzHL4q1wLPSkV71IcKP/c1S2APv616vN3LAG96pgRf6KcLo1VRIseIaXQuR3mRRmhZszfbxmH
	5KAQ1DNpizvHY0N4ZzIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQze-00047C-JM; Tue, 30 Jul 2019 12:12:38 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQza-00046f-FV
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 12:12:36 +0000
Received: by mail-wr1-f66.google.com with SMTP id p17so65491795wrf.11
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 05:12:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HhV8xTaSmerML9zVZ7qS6UxHrCqZLDARfYvjhVb7WHE=;
 b=Ouh7pSMEyGSV7jSOYQW02FoqlAhka7ELZvs7ChbDd93qRjsZPVSV46ySRjllT8m7Ck
 8UCm/JSjie7WsX4r6NNNRoiDv5Adqv5MRPhFYmtwB2DIHp+tmFtoJvOOWNFCbHCZgylG
 qmKyheqAiXqbSZa61tSSZ2N9OccIPxp1dW02bzzT8UGD5qq3CTSruDvHHHiMXHrZ+txa
 42RC96JrODmG824/KNQ3PmtV0Ku8KkW+Y3PNQ/E/pnBXx/DyvTL/KG+9eeizOCK0qK/g
 5X1GVNQy4DvU8uLJ/Q7Zfu4YMs/sGqwK8O1NESvoFv2MC3nLgVnA9dqhlSdCRSO0u1ej
 Fkuw==
X-Gm-Message-State: APjAAAV3KDYv9n4G1n61bQQNCGl62bnfNMJLkmi+mPFa7+qjNxN/ZCte
 GI+ygkP0b9fS7XRUJT3IPzYM/w==
X-Google-Smtp-Source: APXvYqzLXsF6w2xUhox2ex1h6rvuDdDtF/ILVJYVETLp5rg3aTjB58ta3pfCc+xmAu/XbDqGhN+TTA==
X-Received: by 2002:adf:8183:: with SMTP id 3mr128267214wra.181.1564488752845; 
 Tue, 30 Jul 2019 05:12:32 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id a8sm51199553wma.31.2019.07.30.05.12.31
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 05:12:32 -0700 (PDT)
Subject: Re: [RFC PATCH 05/16] RISC-V: KVM: Implement VCPU interrupts and
 requests handling
To: Anup Patel <anup@brainfault.org>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-6-anup.patel@wdc.com>
 <9f9d09e5-49bc-f8e3-cfe1-bd5221e3b683@redhat.com>
 <CAAhSdy3JZVEEnPnssALaxvCsyznF=rt=7-d5J_OgQEJv6cPhxQ@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <66c4e468-7a69-31e7-778b-228908f0e737@redhat.com>
Date: Tue, 30 Jul 2019 14:12:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy3JZVEEnPnssALaxvCsyznF=rt=7-d5J_OgQEJv6cPhxQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_051234_516291_9B81699A 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gMzAvMDcvMTkgMTQ6MDAsIEFudXAgUGF0ZWwgd3JvdGU6Cj4gT24gVHVlLCBKdWwgMzAsIDIw
MTkgYXQgNDo0NyBQTSBQYW9sbyBCb256aW5pIDxwYm9uemluaUByZWRoYXQuY29tPiB3cm90ZToK
Pj4KPj4gRmlyc3QsIHNvbWV0aGluZyB0aGF0IGlzIG5vdCBjbGVhciB0byBtZTogaG93IGRvIHlv
dSBkZWFsIHdpdGggYSBndWVzdAo+PiB3cml0aW5nIDEgdG8gVlNJUC5TU0lQPyAgSSB0aGluayB0
aGF0IGNvdWxkIGxlYWQgdG8gbG9zdCBpbnRlcnJ1cHRzIGlmCj4+IHlvdSBoYXZlIHRoZSBmb2xs
b3dpbmcgc2VxdWVuY2UKPj4KPj4gMSkgZ3Vlc3Qgd3JpdGVzIDEgdG8gVlNJUC5TU0lQCj4+Cj4+
IDIpIGd1ZXN0IGxlYXZlcyBWUy1tb2RlCj4+Cj4+IDMpIGhvc3Qgc3luY3MgVlNJUAo+Pgo+PiA0
KSB1c2VyIG1vZGUgdHJpZ2dlcnMgaW50ZXJydXB0Cj4+Cj4+IDUpIGhvc3QgcmVlbnRlcnMgZ3Vl
c3QKPj4KPj4gNikgaG9zdCBtb3ZlcyBpcnFzX3BlbmRpbmcgdG8gVlNJUCBhbmQgY2xlYXJzIFZT
SVAuU1NJUCBpbiB0aGUgcHJvY2Vzcwo+IAo+IFRoaXMgcmVhc29uaW5nIGFsc28gYXBwbHkgdG8g
TS1tb2RlIGZpcm13YXJlIChPcGVuU0JJKSBwcm92aWRpbmcgdGltZXIKPiBhbmQgSVBJIHNlcnZp
Y2VzIHRvIEhTLW1vZGUgc29mdHdhcmUuIFdlIGhhZCBzb21lIGRpc2N1c3Npb24gYXJvdW5kCj4g
aXQgaW4gYSBkaWZmZXJlbnQgY29udGV4dC4KPiAoUmVmZXIsIGh0dHBzOi8vZ2l0aHViLmNvbS9y
aXNjdi9vcGVuc2JpL2lzc3Vlcy8xMjgpCj4gCj4gVGhlIHRoaW5nIGlzIFNJUCBDU1IgaXMgc3Vw
cG9zZWQgdG8gYmUgcmVhZC1vbmx5IGZvciBhbnkgUy1tb2RlIFNXLiBUaGlzCj4gbWVhbnMgSFMt
bW9kZS9WUy1tb2RlIFNXIG1vZGlmaWNhdGlvbnMgdG8gU0lQIENTUiBzaG91bGQgaGF2ZSBubwo+
IGVmZmVjdC4KCklzIGl0PyAgVGhlIHByaXZpbGVnZWQgc3BlY2lmaWNhdGlvbiBzYXlzCgogIElu
dGVycHJvY2Vzc29yIGludGVycnVwdHMgYXJlIHNlbnQgdG8gb3RoZXIgaGFydHMgYnkgaW1wbGVt
ZW50YXRpb24tCiAgc3BlY2lmaWMgbWVhbnMsIHdoaWNoIHdpbGwgdWx0aW1hdGVseSBjYXVzZSB0
aGUgU1NJUCBiaXQgdG8gYmUgc2V0IGluCiAgdGhlIHJlY2lwaWVudCBoYXJ04oCZcyBzaXAgcmVn
aXN0ZXIuCgogIEFsbCBiaXRzIGJlc2lkZXMgU1NJUCBpbiB0aGUgc2lwIHJlZ2lzdGVyIGFyZSBy
ZWFkLW9ubHkuCgpNZWFuaW5nIHRoYXQgc2VuZGluZyBhbiBJUEkgdG8gc2VsZiBieSB3cml0aW5n
IDEgdG8gc2lwLlNTSVAgaXMKd2VsbC1kZWZpbmVkLiAgVGhlIHNhbWUgc2hvdWxkIGJlIHRydWUg
b2YgdnNpcC5TU0lQIHdoaWxlIGluIFZTIG1vZGUuCgo+IERvIHlvdSBzdGlsbCBhbiBpc3N1ZSBo
ZXJlPwoKRG8geW91IHNlZSBhbnkgaXNzdWVzIGluIHRoZSBwc2V1ZG9jb2RlIEkgc2VudD8gIEl0
IGdldHMgYXdheSB3aXRoIHRoZQpzcGlubG9jayBhbmQgcmVxdWVzdCBzbyBpdCBtYXkgYmUgYSBn
b29kIGlkZWEgYW55d2F5LiA6KQoKUGFvbG8KCj4gUmVnYXJkcywKPiBBbnVwCj4gCj4+Cj4+IFBl
cmhhcHMgaXJxc19wZW5kaW5nIG5lZWRzIHRvIGJlIHNwbGl0IGluIHR3byBmaWVsZHMsIGlycXNf
cGVuZGluZyBhbmQKPj4gaXJxc19wZW5kaW5nX21hc2ssIGFuZCB0aGVuIHlvdSBjYW4gZG8gdGhp
czoKPj4KPj4gLyoKPj4gICogaXJxc19wZW5kaW5nIGFuZCBpcnFzX3BlbmRpbmdfbWFzayBoYXZl
IG11bHRpcGxlLXByb2R1Y2VyL3NpbmdsZS0KPj4gICogY29uc3VtZXIgc2VtYW50aWNzOyB0aGVy
ZWZvcmUgYml0cyBjYW4gYmUgc2V0IGluIHRoZSBtYXNrIHdpdGhvdXQKPj4gICogYSBsb2NrLCBi
dXQgY2xlYXJpbmcgdGhlIGJpdHMgcmVxdWlyZXMgdmNwdV9sb2NrLiAgRnVydGhlcm1vcmUsCj4+
ICAqIGNvbnN1bWVycyBzaG91bGQgbmV2ZXIgd3JpdGUgdG8gaXJxc19wZW5kaW5nLCBhbmQgc2hv
dWxkIG5vdAo+PiAgKiB1c2UgYml0cyBvZiBpcnFzX3BlbmRpbmcgdGhhdCB3ZXJlbid0IDEgaW4g
dGhlIG1hc2suCj4+ICAqLwo+Pgo+PiBpbnQga3ZtX3Jpc2N2X3ZjcHVfc2V0X2ludGVycnVwdChz
dHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsIHVuc2lnbmVkIGludCBpcnEpCj4+IHsKPj4gICAgICAgICAu
Li4KPj4gICAgICAgICBzZXRfYml0KGlycSwgJnZjcHUtPmFyY2guaXJxc19wZW5kaW5nKTsKPj4g
ICAgICAgICBzbXBfbWJfX2JlZm9yZV9hdG9taWMoKTsKPj4gICAgICAgICBzZXRfYml0KGlycSwg
JnZjcHUtPmFyY2guaXJxc19wZW5kaW5nX21hc2spOwo+PiAgICAgICAgIGt2bV92Y3B1X2tpY2so
dmNwdSk7Cj4+IH0KPj4KPj4gaW50IGt2bV9yaXNjdl92Y3B1X3Vuc2V0X2ludGVycnVwdChzdHJ1
Y3Qga3ZtX3ZjcHUgKnZjcHUsIHVuc2lnbmVkIGludCBpcnEpCj4+IHsKPj4gICAgICAgICAuLi4K
Pj4gICAgICAgICBjbGVhcl9iaXQoaXJxLCAmdmNwdS0+YXJjaC5pcnFzX3BlbmRpbmcpOwo+PiAg
ICAgICAgIHNtcF9tYl9fYmVmb3JlX2F0b21pYygpOwo+PiAgICAgICAgIHNldF9iaXQoaXJxLCAm
dmNwdS0+YXJjaC5pcnFzX3BlbmRpbmdfbWFzayk7Cj4+IH0KPj4KPj4gc3RhdGljIHZvaWQga3Zt
X3Jpc2N2X3Jlc2V0X3ZjcHUoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQo+PiB7Cj4+ICAgICAgICAg
Li4uCj4+ICAgICAgICAgV1JJVEVfT05DRSh2Y3B1LT5hcmNoLmlycXNfcGVuZGluZ19tYXNrLCAw
KTsKPj4gfQo+Pgo+PiBhbmQga3ZtX3Jpc2N2X3ZjcHVfZmx1c2hfaW50ZXJydXB0cyBjYW4gbGVh
dmUgYXNpZGUgVlNJUCBiaXRzIHRoYXQKPj4gYXJlbid0IGluIHZjcHUtPmFyY2guaXJxc19wZW5k
aW5nX21hc2s6Cj4+Cj4+ICAgICAgICAgaWYgKGF0b21pY19yZWFkKCZ2Y3B1LT5hcmNoLmlycXNf
cGVuZGluZ19tYXNrKSkgewo+PiAgICAgICAgICAgICAgICAgdTMyIG1hc2ssIHZhbDsKPj4KPj4g
ICAgICAgICAgICAgICAgIG1hc2sgPSB4Y2hnX2FjcXVpcmUoJnZjcHUtPmFyY2guaXJxc19wZW5k
aW5nX21hc2ssIDApOwo+PiAgICAgICAgICAgICAgICAgdmFsID0gUkVBRF9PTkNFKHZjcHUtPmFy
Y2guaXJxc19wZW5kaW5nKSAmIG1hc2s7Cj4+Cj4+ICAgICAgICAgICAgICAgICB2Y3B1LT5hcmNo
Lmd1ZXN0X2Nzci52c2lwICY9IH5tYXNrOwo+PiAgICAgICAgICAgICAgICAgdmNwdS0+YXJjaC5n
dWVzdF9jc3IudnNpcCB8PSB2YWw7Cj4+ICAgICAgICAgICAgICAgICBjc3Jfd3JpdGUoQ1NSX1ZT
SVAsIHZzaXApOwo+PiAgICAgICAgIH0KPj4KPj4gQWxzbywgdGhlIGdldHRlciBvZiBDU1JfVlNJ
UCBzaG91bGQgY2FsbAo+PiBrdm1fcmlzY3ZfdmNwdV9mbHVzaF9pbnRlcnJ1cHRzLCB3aGlsZSB0
aGUgc2V0dGVyIHNob3VsZCBjbGVhcgo+PiBpcnFzX3BlbmRpbmdfbWFzay4KPj4KPj4gT24gMjkv
MDcvMTkgMTM6NTYsIEFudXAgUGF0ZWwgd3JvdGU6Cj4+PiArICAgICBrdm1fbWFrZV9yZXF1ZXN0
KEtWTV9SRVFfSVJRX1BFTkRJTkcsIHZjcHUpOwo+Pj4gKyAgICAga3ZtX3ZjcHVfa2ljayh2Y3B1
KTsKPj4KPj4gVGhlIHJlcXVlc3QgaXMgbm90IG5lZWRlZCBhcyBsb25nIGFzIGt2bV9yaXNjdl92
Y3B1X2ZsdXNoX2ludGVycnVwdHMgaXMKPj4gY2FsbGVkICphZnRlciogc21wX3N0b3JlX21iKHZj
cHUtPm1vZGUsIElOX0dVRVNUX01PREUpIGluCj4+IGt2bV9hcmNoX3ZjcHVfaW9jdGxfcnVuLiAg
VGhpcyBpcyB0aGUgInJlcXVlc3QtbGVzcyB2Q1BVIGtpY2siIHBhdHRlcm4KPj4gaW4gRG9jdW1l
bnRhdGlvbi92aXJ0dWFsL2t2bS92Y3B1LXJlcXVlc3RzLnJzdC4gIFRoZSBzbXBfc3RvcmVfbWIg
dGhlbgo+PiBvcmRlcnMgdGhlIHdyaXRlIG9mIElOX0dVRVNUX01PREUgYmVmb3JlIHRoZSByZWFk
IG9mIGlycXNfcGVuZGluZyAob3IKPj4gaXJxc19wZW5kaW5nX21hc2sgaW4gbXkgcHJvcG9zYWwg
YWJvdmUpOyBpbiB0aGUgcHJvZHVjZXJzLCB0aGVyZSBpcyBhCj4+IGR1YWwgbWVtb3J5IGJhcnJp
ZXIgaW4ga3ZtX3ZjcHVfZXhpdGluZ19ndWVzdF9tb2RlKCksIG9yZGVyaW5nIHRoZSB3cml0ZQo+
PiBvZiBpcnFzX3BlbmRpbmcoX21hc2spIGJlZm9yZSB0aGUgcmVhZCBvZiB2Y3B1LT5tb2RlLgo+
Pgo+PiBTaW1pbGFyIHRvIG90aGVyIFZTKiBDU1JzLCBJJ2QgcmF0aGVyIGhhdmUgYSBPTkVfUkVH
IGludGVyZmFjZSBmb3IgVlNJRQo+PiBhbmQgVlNJUCBmcm9tIHRoZSBiZWdpbm5pbmcgYXMgd2Vs
bC4gIE5vdGUgdGhhdCB0aGUgVlNJUCBzZXR0ZXIgd291bGQKPj4gY2xlYXIgaXJxc19wZW5kaW5n
X21hc2ssIHdoaWxlIHRoZSBnZXR0ZXIgd291bGQgY2FsbAo+PiBrdm1fcmlzY3ZfdmNwdV9mbHVz
aF9pbnRlcnJ1cHRzIGJlZm9yZSByZWFkaW5nLiAgSXQncyB1cCB0byB1c2Vyc3BhY2UgdG8KPj4g
ZW5zdXJlIHRoYXQgbm8gaW50ZXJydXB0IGluamVjdGlvbnMgaGFwcGVuIGJldHdlZW4gdGhlIGNh
bGxzIHRvIHRoZQo+PiBnZXR0ZXIgYW5kIHRoZSBzZXR0ZXIuCj4+Cj4+IFBhb2xvCj4+Cj4+PiAr
ICAgICAgICAgICAgIGNzcl93cml0ZShDU1JfVlNJUCwgdmNwdS0+YXJjaC5pcnFzX3BlbmRpbmcp
Owo+Pj4gKyAgICAgICAgICAgICB2Y3B1LT5hcmNoLmd1ZXN0X2Nzci52c2lwID0gdmNwdS0+YXJj
aC5pcnFzX3BlbmRpbmc7Cj4+PiArICAgICB9Cj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJp
c2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yaXNjdgo=
