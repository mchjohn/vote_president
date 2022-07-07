import 'package:flutter/material.dart';
import 'package:vote_president_app/repositories/candidate_repository.dart';

class CandidateList extends StatelessWidget {
  const CandidateList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final table = CandidateRepository.table;

    return Expanded(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int candidate) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(table[candidate].avatar),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                '${table[candidate].numberCandidate} - ${table[candidate].name}',
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff041B10),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  table[candidate].qtdVotes.toString(),
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Color(0xff545752),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  table[candidate].percentageVotes,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff041B10),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Partido: ${table[candidate].party.toUpperCase()}',
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Color(0xff545752),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            trailing: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xff108B64),
              ),
              width: 82,
              height: 42,
              child: Center(
                  child: Text(
                'Votar'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Color(0xffFCFCFC),
                  fontWeight: FontWeight.w700,
                ),
              )),
            ),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: table.length,
        shrinkWrap: true,
      ),
    );
  }
}
